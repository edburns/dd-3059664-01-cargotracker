[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false

$repository = 'edburns/dd-3059664-01-cargotracker'
$parentIssue = 3
$expectedCount = 5
$lessonPropagation = 'off'
$logDirectory = $PSScriptRoot
$bodyDirectory = Join-Path $logDirectory 'issue-bodies'
$draftValidator = 'C:\Users\edburns\.copilot\plugins\shepherd-task\scripts\validate-stage20-drafts.ps1'
$bodyVerifier = 'C:\Users\edburns\.copilot\plugins\shepherd-task\scripts\verify-github-issue-body.ps1'
$ledgerPath = Join-Path $logDirectory 'creation-ledger.json'
$resultPath = Join-Path $logDirectory 'stage-20-result.json'
$linkInputPath = Join-Path $logDirectory '.sub-issue-input.json'

$specifications = @(
    [ordered]@{
        implementationSubsection = '4.1 — Issue 1: Add the application-layer deadline change operation'
        bodyFile = 'issue-bodies/01-4-1-body.md'
        title = '4.1 — Add the application-layer deadline change operation'
    },
    [ordered]@{
        implementationSubsection = '4.2 — Issue 2: Expose deadline changes through the booking facade'
        bodyFile = 'issue-bodies/02-4-2-body.md'
        title = '4.2 — Expose deadline changes through the booking facade'
    },
    [ordered]@{
        implementationSubsection = '4.3 — Issue 3: Implement the deadline editor backing model'
        bodyFile = 'issue-bodies/03-4-3-body.md'
        title = '4.3 — Implement the deadline editor backing model'
    },
    [ordered]@{
        implementationSubsection = '4.4 — Issue 4: Implement the PrimeFaces deadline dialog'
        bodyFile = 'issue-bodies/04-4-4-body.md'
        title = '4.4 — Implement the PrimeFaces deadline dialog'
    },
    [ordered]@{
        implementationSubsection = '4.5 — Issue 5: Integrate deadline editing into the Administration dashboard'
        bodyFile = 'issue-bodies/05-4-5-body.md'
        title = '4.5 — Integrate deadline editing into the Administration dashboard'
    }
)

function Write-AtomicText {
    param(
        [Parameter(Mandatory)][string]$Path,
        [Parameter(Mandatory)][AllowEmptyString()][string]$Text
    )

    $temporaryPath = "$Path.$([Guid]::NewGuid().ToString('N')).tmp"
    try {
        [IO.File]::WriteAllText($temporaryPath, $Text, [Text.UTF8Encoding]::new($false))
        Move-Item -LiteralPath $temporaryPath -Destination $Path -Force
    }
    finally {
        if (Test-Path -LiteralPath $temporaryPath) {
            Remove-Item -LiteralPath $temporaryPath -Force
        }
    }
}

function Read-CreationLedger {
    $parsed = [IO.File]::ReadAllText($ledgerPath) |
        ConvertFrom-Json -NoEnumerate
    if ($parsed -isnot [System.Array]) {
        throw 'Creation ledger JSON root must be an array.'
    }

    $ledger = [object[]]$parsed
    if (@($ledger | Where-Object { $_ -is [System.Array] }).Count -ne 0) {
        throw 'Creation ledger must not contain nested array entries.'
    }
    return $ledger
}

function Write-CreationLedger {
    param([Parameter(Mandatory)][AllowEmptyCollection()][object[]]$Ledger)

    $json = ConvertTo-Json -InputObject ([object[]]$Ledger) -Depth 10
    Write-AtomicText -Path $ledgerPath -Text $json
}

function Write-StageResult {
    param(
        [Parameter(Mandatory)][ValidateSet('in_progress', 'failed', 'complete')][string]$Status,
        [AllowNull()][string]$OperationError
    )

    $result = [ordered]@{
        schemaVersion = 1
        status = $Status
        ledgerFile = 'creation-ledger.json'
        operationError = $OperationError
    }
    Write-AtomicText -Path $resultPath -Text ($result | ConvertTo-Json -Depth 4)
}

function Get-ParentChildren {
    $output = & gh api "repos/$repository/issues/$parentIssue/sub_issues" --paginate 2>&1
    $exitCode = $LASTEXITCODE
    if ($exitCode -ne 0) {
        throw "Unable to query parent children: $($output | Out-String)"
    }
    return @(($output | Out-String) | ConvertFrom-Json)
}

function Reconcile-Ledger {
    $ledger = @(Read-CreationLedger)
    try {
        $serverChildren = @(Get-ParentChildren)
        $linkedIds = @($serverChildren | ForEach-Object { [long]$_.id })
        foreach ($entry in $ledger) {
            $entry.linked = $linkedIds -contains [long]$entry.id
        }
        Write-CreationLedger -Ledger $ledger
        return $null
    }
    catch {
        return " Reconciliation also failed: $($_.Exception.Message)"
    }
}

$validated = @(
    & $draftValidator `
        -BodyDirectory $bodyDirectory `
        -ExpectedCount $expectedCount `
        -LessonPropagation $lessonPropagation
)
if ($validated.Count -ne $expectedCount) {
    throw "Draft validation returned $($validated.Count) files instead of $expectedCount."
}

$baselineChildren = @(Get-ParentChildren)
$baselineIds = @($baselineChildren | ForEach-Object { [long]$_.id })

Write-CreationLedger -Ledger ([object[]]@())
Write-StageResult -Status in_progress -OperationError $null

try {
    foreach ($specification in $specifications) {
        $bodyPath = Join-Path $logDirectory $specification.bodyFile
        $createOutput = & gh api "repos/$repository/issues" `
            -X POST `
            -f "title=$($specification.title)" `
            -F "body=@$bodyPath" `
            --jq '{id,number,node_id,html_url,title}' 2>&1
        $createExitCode = $LASTEXITCODE
        if ($createExitCode -ne 0) {
            throw "Create failed for '$($specification.implementationSubsection)': $($createOutput | Out-String)"
        }

        try {
            $createdIssue = ($createOutput | Out-String) | ConvertFrom-Json
        }
        catch {
            throw "Create returned invalid JSON for '$($specification.implementationSubsection)': $($_.Exception.Message)"
        }
        if (-not $createdIssue.id -or -not $createdIssue.number -or -not $createdIssue.html_url) {
            throw "Create returned an incomplete issue identity for '$($specification.implementationSubsection)'."
        }

        $ledger = @(Read-CreationLedger)
        $ledger += [pscustomobject][ordered]@{
            implementationSubsection = $specification.implementationSubsection
            bodyFile = $specification.bodyFile
            id = [long]$createdIssue.id
            number = [int]$createdIssue.number
            title = [string]$createdIssue.title
            url = [string]$createdIssue.html_url
            body_verified = $false
            linked = $false
        }
        Write-CreationLedger -Ledger $ledger

        try {
            $null = & $bodyVerifier `
                -Repository $repository `
                -IssueNumber ([int]$createdIssue.number) `
                -ExpectedBodyPath $bodyPath `
                -MaxAttempts 6 `
                -DelaySeconds 5 `
                -DiagnosticPath (Join-Path $logDirectory "issue-$($createdIssue.number)-body-verification-failure.json")
        }
        catch {
            throw "Body verification failed for issue #$($createdIssue.number): $($_.Exception.Message)"
        }

        $ledger = @(Read-CreationLedger)
        ($ledger | Where-Object { $_.id -eq [long]$createdIssue.id }).body_verified = $true
        Write-CreationLedger -Ledger $ledger

        Write-AtomicText -Path $linkInputPath -Text (
            @{sub_issue_id = [long]$createdIssue.id} | ConvertTo-Json -Compress
        )
        $linkError = $null
        $linked = $false
        for ($attempt = 1; $attempt -le 3; $attempt++) {
            $linkOutput = & gh api "repos/$repository/issues/$parentIssue/sub_issues" `
                -X POST `
                --input $linkInputPath 2>&1
            $linkExitCode = $LASTEXITCODE
            if ($linkExitCode -eq 0) {
                $linked = $true
                break
            }
            $linkError = ($linkOutput | Out-String).Trim()
            if ($attempt -lt 3) {
                Start-Sleep -Seconds 2
            }
        }
        if (-not $linked) {
            throw "Link failed for issue #$($createdIssue.number) after 3 attempts: $linkError"
        }

        $ledger = @(Read-CreationLedger)
        ($ledger | Where-Object { $_.id -eq [long]$createdIssue.id }).linked = $true
        Write-CreationLedger -Ledger $ledger
    }

    $ledger = @(Read-CreationLedger)
    $serverChildren = @(Get-ParentChildren)
    if ($serverChildren.Count -ne ($baselineChildren.Count + $ledger.Count)) {
        throw "Postcondition failed: parent child count increased by $($serverChildren.Count - $baselineChildren.Count), expected $($ledger.Count)."
    }

    $newChildren = @($serverChildren | Where-Object { $baselineIds -notcontains [long]$_.id })
    if ($newChildren.Count -ne $ledger.Count) {
        throw "Postcondition failed: found $($newChildren.Count) new children, expected $($ledger.Count)."
    }
    for ($index = 0; $index -lt $ledger.Count; $index++) {
        if ([long]$newChildren[$index].id -ne [long]$ledger[$index].id) {
            throw "Postcondition failed: new child order differs from implementation order at position $($index + 1)."
        }
    }

    foreach ($entry in $ledger) {
        if (-not $entry.linked -or -not $entry.body_verified) {
            throw "Postcondition failed: ledger state is incomplete for issue #$($entry.number)."
        }
        $bodyPath = Join-Path $logDirectory $entry.bodyFile
        try {
            $issue = & $bodyVerifier `
                -Repository $repository `
                -IssueNumber ([int]$entry.number) `
                -ExpectedBodyPath $bodyPath `
                -MaxAttempts 6 `
                -DelaySeconds 5 `
                -DiagnosticPath (Join-Path $logDirectory "issue-$($entry.number)-body-verification-failure.json")
        }
        catch {
            throw "Final body verification failed for issue #$($entry.number): $($_.Exception.Message)"
        }
        if ($issue.state -ne 'open') {
            throw "Postcondition failed: issue #$($entry.number) is not open."
        }
        if (@($issue.assignees).Count -ne 0) {
            throw "Postcondition failed: issue #$($entry.number) has an assignee."
        }
        if (@($serverChildren | Where-Object { [long]$_.id -eq [long]$entry.id }).Count -ne 1) {
            throw "Postcondition failed: issue #$($entry.number) is not linked exactly once."
        }
    }

    Write-StageResult -Status complete -OperationError $null
}
catch {
    $operationError = $_.Exception.Message
    $reconciliationError = Reconcile-Ledger
    Write-StageResult -Status failed -OperationError "$operationError$reconciliationError"
    throw "$operationError$reconciliationError"
}
finally {
    if (Test-Path -LiteralPath $linkInputPath) {
        Remove-Item -LiteralPath $linkInputPath -Force
    }
}

@(Read-CreationLedger) | ConvertTo-Json -Depth 10
