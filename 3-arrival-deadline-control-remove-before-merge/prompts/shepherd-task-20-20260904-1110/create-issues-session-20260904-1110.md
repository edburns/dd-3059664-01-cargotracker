# Copilot CLI Session

> [!NOTE]
> - **Session ID:** `b7b4fbaa-eb4b-4e85-b45e-a8017263b74b`  
> - **Started:** 9/4/2026, 11:10:57 AM  
> - **Duration:** 3m 12s  
> - **Exported:** 9/4/2026, 11:14:10 AM  

---

<sub>10s</sub>

### User

Invoke skill `shepherd-task-20-create-issues-from-plan` with these inputs:

- CAMPAIGN_ID: 69e6d215-57cd-4d3e-82df-336e7bc6fe4c
- LESSON_PROPAGATION: off
- REPO: edburns/dd-3059664-01-cargotracker
- BASE_BRANCH: experiment/shepherd-control
- PARENT_ISSUE: 3
- PLAN_DIRECTORY: 3-arrival-deadline-control-remove-before-merge
- PLAN_FILE_NAME: add-change-arrival-deadline-feature-ignorance-reduction-plan.md
- QUESTIONS_SECTION: ## Phase 3 — Ignorance reduction: questions to answer before writing code
- IMPLEMENTATION_SECTION: ## Phase 4 — Implementation (five serial issues)
- EXPECTED_TASK_COUNT: 5
- BASE_REMOTE: origin
- LOG_DIRECTORY: C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\prompts\shepherd-task-20-20260904-1110
- DRAFT_VALIDATOR: C:\Users\edburns\.copilot\plugins\shepherd-task\scripts\validate-stage20-drafts.ps1
- ISSUE_BODY_VERIFIER: C:\Users\edburns\.copilot\plugins\shepherd-task\scripts\verify-github-issue-body.ps1



---

<sub>15s</sub>

### `skill`

**shepherd-task-20-create-issues-from-plan**

<details>
<summary>Arguments</summary>

```json
{
  "skill": "shepherd-task-20-create-issues-from-plan"
}
```

</details>

```
Skill "shepherd-task-20-create-issues-from-plan" loaded successfully. Follow the instructions in the skill context.
```


---

<sub>19s</sub>

### Copilot

I’m validating the campaign inputs, plan structure, repository state, and issue-type support before drafting any GitHub mutations.

---

<sub>37s</sub>

### `view`

**view the file at C:\Users\edburns\.copilot\skills\shepherd-task-20-create-issues-from-plan\examples\01-1682-java-tool-ergonomics.md.**

C:\Users\edburns\.copilot\skills\shepherd-task-20-create-issues-from-plan\examples\01-1682-java-tool-ergonomics.md

<details>
<summary>15 lines</summary>

```
# Example 01: 1682-java-tool-ergonomics-prompts-remove-before-merge

Read `copilot-sdk/1682-java-tool-ergonomics-prompts-remove-before-merge/dd-3018003-ignorance-reduction-for-implementation-plan.md` (the plan) to get the context.

✅✅Pay very close attention to each **Resolution:** to the questions in `Phase 3 — Ignorance reduction: questions to answer before writing code`.

In this session, we are creating issues of type **Task** as children of Epic https://github.com/github/copilot-sdk/issues/1682 . These issues correspond to the sub-sections in `## Phase 4 — Implementation (the build order)`.

I want you to use `gh` to create issues as sub-issues of 1682.

- I will dispatch these issues by assigning them to an agent. Leave them unassigned for now.

- The description you put in the issues you create is the specification for the work the agent assigned to the issue must do. Therefore, you need to be very specific and targeted when writing the description.

- Set the type to **Task**.

- Each issue will be worked on and resolved in serial. You can assume:
  - All issues will operate in this topic branch of `upstream`: `edburns/1682-java-tool-ergonomics`.

  - The assignee agent has access to the topic branch and, most importantly, to the prompts in the directory `1682-java-tool-ergonomics-prompts-remove-before-merge`, which includes the plan. Therefore, you can instruct the agent to access the plan by reference, you don't need to reference it by value directly in the issue.

- The sub-sections of `## Phase 4 — Implementation (the build order)` have essential details for each corresponding **Task**.

- Instruct the agent to read the entire plan before working.

- Instruct the agent to carefully re-read the relevant sections of the of the plan. ❌❌You can't just say, "read the relevant sections of the plan". ✅✅In the description of the issue, list exactly what sections of the plan apply to this particular issue.
- Though the sub-sections of `## Phase 4 — Implementation (the build order)` have essential details for each corresponding **Task**, I want you to carefully consider if there additional gating tests you can add so that as the agent proceeds from one task to the next, the likelihood of rework is reduced.
```

</details>


---

<sub>37s</sub>

### `view`

**view the file at C:\Users\edburns\.copilot\skills\shepherd-task-20-create-issues-from-plan\examples\02-1810-java-tool-as-lambda.md.**

C:\Users\edburns\.copilot\skills\shepherd-task-20-create-issues-from-plan\examples\02-1810-java-tool-as-lambda.md

<details>
<summary>12 lines</summary>

```
# Example 02: 1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge

Carefully read the plan `copilot-sdk/1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge/1810-ignorance-reduction-for-implementation-plan.md`.

We have completed Phases 1 - 3. We are now on Phase 4.

For each sub item in Phase 4, file a child issue of Feature #1810.

Use `gh` to look at Epic #1682 and its child issues for the standard of verbosity and concreteness for issue descriptions.

The issue should be assignable to a coding agent and there must be sufficient detail in the description for the agent to proceed to completion.

Pull out the specific relevant content from Phase 3 as it applies to this current issue in Phase 4.

Tell the agent to take `edburns/1810-java-tool-ergonomics-tool-as-lambda` as the base branch. When I assign the issue to the coding agent, I will set this as the base branch.

Tell the agent to read `1810-java-tool-ergonomics-tool-as-lambda-remove-before-merge/1810-ignorance-reduction-for-implementation-plan.md`, which is present on the branch, for context.

Tell the agent which sub-item within Phase 4 they are solving.

Tell the agent that each issue will be assigned, resolved and merged to the base branch in the order in which they appear in the plan.

No work is to start until I assign each issue to the coding agent, in turn.
```

</details>


---

<sub>38s</sub>

### `view`

**view the file at C:\Users\edburns\.copilot\skills\shepherd-task-20-create-issues-from-plan\examples\03-dd-3017826-java-real-estate-demo.md.**

C:\Users\edburns\.copilot\skills\shepherd-task-20-create-issues-from-plan\examples\03-dd-3017826-java-real-estate-demo.md

<details>
<summary>14 lines</summary>

```
# Example 03: dd-3017826-java-real-estate-demo-remove-before-merge

Read `dd-3017826-java-real-estate-demo-remove-before-merge\dd-3017826-java-real-estate-demo-ignorance-reduction-plan.md` (the plan) to get the context.

✅✅Pay very close attention to each **Resolution:** to the questions in `Phase 2 — Ignorance reduction: questions to answer before writing code`.

In this session, we are creating sub-issues as children of https://github.com/edburns/Build26-BRK206-your-agent-anywhere-multiclient-multidevice-with-github-copilot-sdk/issues/2 . These issues correspond to the sub-sections in `## Phase 3 — Implementation (build order)`.

I want you to use `gh` to create issues as sub-issues of #2.

- I will dispatch these issues by assigning them to an agent. Leave them unassigned for now.

- The description you put in the issues you create is the specification for the work the agent assigned to the issue must do. Therefore, you need to be very specific and targeted when writing the description.

- Each issue will be worked on and resolved in serial. You can assume:
  - All issues will operate in this topic branch of `origin`: `edburns/2-build-out-demo`.

  - The assignee agent has access to the topic branch and, most importantly, to the prompts in the directory `dd-3017826-java-real-estate-demo-remove-before-merge`, which includes the plan. Therefore, you can instruct the agent to access the plan by reference, you don't need to reference it by value directly in the issue.

- The sub-sections of `## Phase 3 — Implementation (build order)` have essential details for each corresponding sub-issue.

- Instruct the agent to read the entire plan before working.

- Instruct the agent to carefully re-read the relevant sections of the of the plan. ❌❌You can't just say, "read the relevant sections of the plan". ✅✅In the description of the issue, list exactly what sections of the plan apply to this particular issue.
- Though the sub-sections of `## Phase 3 — Implementation (build order)` have essential details for each corresponding sub-issue, I want you to carefully consider if there additional gating tests you can add so that as the agent proceeds from one task to the next, the likelihood of rework is reduced.
```

</details>


---

<sub>38s</sub>

### `view`

**view the file at C:\Users\edburns\.copilot\skills\shepherd-task-20-create-issues-from-plan\examples\04-28-python-agent-demo.md.**

C:\Users\edburns\.copilot\skills\shepherd-task-20-create-issues-from-plan\examples\04-28-python-agent-demo.md

<details>
<summary>16 lines</summary>

```
# Example 04: 28-python-agent-demo-remove-before-merge

Read `28-python-agent-demo-remove-before-merge/28-python-agent-demo-ignorance-reduction-plan.md` (the plan) to get the context.

✅✅Pay very close attention to each **Resolution:** to the questions in `Phase 2 — Ignorance reduction: questions to answer before writing code`. These pertain to the implementation tasks in Phase 3. ✅✅✅ Make sure to put into the description explicit instructions on how to access the relevant spike research.

In this session, we are creating sub-issues as children of https://github.com/edburns/Build26-BRK206-your-agent-anywhere-multiclient-multidevice-with-github-copilot-sdk/issues/28 . These issues correspond to the sub-sections in `## Phase 3 — Implementation (build order)`.

I want you to use `gh` to create issues as sub-issues of #28

- I will dispatch these issues by assigning them to an agent. Leave them unassigned for now.

- The description you put in the issues you create is the specification for the work the agent assigned to the issue must do. Therefore, you need to be very specific and targeted when writing the description.

- Again, ✅✅For each **Resolution:** to the questions in `Phase 2 — Ignorance reduction: questions to answer before writing code`, include the relevant Resolution values in the issue description. These pertain to the implementation tasks in Phase 3. ✅✅✅ Make sure to put into the description explicit instructions on how to access the relevant spike research for that task.

- For tasks dealing with the UI, make sure to refer to the relevant screengrabs, but only ones within `28-python-agent-demo-remove-before-merge/`.

- Each issue will be worked on and resolved in serial. You can assume:
  - All issues will operate in this topic branch of `origin`: `edburns/28-python-agent-demo`.

  - The assignee agent has access to the topic branch and, most importantly, to the prompts in the directory `28-python-agent-demo-remove-before-merge/`, which includes the plan. Therefore, you can instruct the agent to access the plan by reference, you don't need to reference it by value directly in the issue.

- The sub-sections of `## Phase 3 — Implementation (build order)` have essential details for each corresponding sub-issue.

- Instruct the agent to read the entire plan before working.

- Instruct the agent to carefully re-read the relevant sections of the of the plan. ❌❌You can't just say, "read the relevant sections of the plan". ✅✅In the description of the issue, list exactly what sections of the plan apply to this particular issue.
- Though the sub-sections of `## Phase 3 — Implementation (build order)` have essential details for each corresponding sub-issue, I want you to carefully consider if there additional gating tests you can add so that as the agent proceeds from one task to the next, the likelihood of rework is reduced.
```

</details>


---

<sub>39s</sub>

### `powershell`

**Validate paths, remotes, branch, and worktree**

<details>
<summary>Arguments</summary>

```json
{
  "command": "$ErrorActionPreference='Stop'; $logDir='C:\\Users\\edburns\\workareas\\dd-3059664-01-cargotracker-shepherd-control\\3-arrival-deadline-control-remove-before-merge\\prompts\\shepherd-task-20-20260904-1110'; $draft='C:\\Users\\edburns\\.copilot\\plugins\\shepherd-task\\scripts\\validate-stage20-drafts.ps1'; $verify='C:\\Users\\edburns\\.copilot\\plugins\\shepherd-task\\scripts\\verify-github-issue-body.ps1'; [pscustomobject]@{LogDirectoryExists=Test-Path -LiteralPath $logDir -PathType Container; DraftValidatorExists=Test-Path -LiteralPath $draft -PathType Leaf; BodyVerifierExists=Test-Path -LiteralPath $verify -PathType Leaf; LogDirectoryRooted=[IO.Path]::IsPathRooted($logDir); DraftRooted=[IO.Path]::IsPathRooted($draft); VerifyRooted=[IO.Path]::IsPathRooted($verify)} | ConvertTo-Json; New-Item -ItemType Directory -Path (Join-Path $logDir 'issue-bodies') -Force | Out-Null; $probe=Join-Path $logDir '.write-probe'; [IO.File]::WriteAllText($probe,'ok'); Remove-Item -LiteralPath $probe; git remote -v; git branch --list 'experiment/shepherd-control'; git status --short",
  "description": "Validate paths, remotes, branch, and worktree",
  "initial_wait": 30,
  "mode": "sync"
}
```

</details>

<details>
<summary>13 lines</summary>

```
{
  "LogDirectoryExists": true,
  "DraftValidatorExists": true,
  "BodyVerifierExists": true,
  "LogDirectoryRooted": true,
  "DraftRooted": true,
  "VerifyRooted": true
}
origin	https://github.com/edburns/dd-3059664-01-cargotracker.git (fetch)
origin	https://github.com/edburns/dd-3059664-01-cargotracker.git (push)
* experiment/shepherd-control
?? 3-arrival-deadline-control-remove-before-merge/prompts/
<shellId: 2 completed with exit code 0>
```

</details>


---

<sub>40s</sub>

### `powershell`

**Validate repository, parent, issue type, and children**

<details>
<summary>Arguments</summary>

```json
{
  "command": "$ErrorActionPreference='Stop'; $repo='edburns/dd-3059664-01-cargotracker'; $repoOut=& gh api \"repos/$repo\" 2>&1; $repoExit=$LASTEXITCODE; if($repoExit -ne 0){throw ($repoOut|Out-String)}; $repoData=($repoOut|Out-String)|ConvertFrom-Json; $parentOut=& gh api \"repos/$repo/issues/3\" 2>&1; $parentExit=$LASTEXITCODE; if($parentExit -ne 0){throw ($parentOut|Out-String)}; $parent=($parentOut|Out-String)|ConvertFrom-Json; $childrenOut=& gh api \"repos/$repo/issues/3/sub_issues\" --paginate 2>&1; $childrenExit=$LASTEXITCODE; if($childrenExit -ne 0){throw ($childrenOut|Out-String)}; $children=@(($childrenOut|Out-String)|ConvertFrom-Json); $type=$null; if($repoData.owner.type -eq 'Organization'){ $typesOut=& gh api \"orgs/$($repoData.owner.login)/issue-types\" 2>&1; $typesExit=$LASTEXITCODE; if($typesExit -ne 0){throw ($typesOut|Out-String)}; $types=@(($typesOut|Out-String)|ConvertFrom-Json); $type=$types|Where-Object {$_.name -eq 'Task' -and $_.is_enabled -eq $true}|Select-Object -First 1 } elseif($repoData.owner.type -ne 'User'){throw \"Unrecognized owner type $($repoData.owner.type)\"}; [pscustomobject]@{default_branch=$repoData.default_branch; owner_login=$repoData.owner.login; owner_type=$repoData.owner.type; parent_number=$parent.number; parent_state=$parent.state; parent_title=$parent.title; selected_issue_type=if($type){'Task'}else{''}; children=@($children|ForEach-Object{[pscustomobject]@{id=$_.id;number=$_.number;title=$_.title}})}|ConvertTo-Json -Depth 6",
  "description": "Validate repository, parent, issue type, and children",
  "initial_wait": 30,
  "mode": "sync"
}
```

</details>

<details>
<summary>11 lines</summary>

```
{
  "default_branch": "20260902-2104Z-commit-e7b651f-liberty",
  "owner_login": "edburns",
  "owner_type": "User",
  "parent_number": 3,
  "parent_state": "open",
  "parent_title": "[Campaign][off] Cargo Tracker arrival-deadline control",
  "selected_issue_type": "",
  "children": []
}
<shellId: 0 completed with exit code 0>
```

</details>


---

<sub>39s</sub>

### `powershell`

**Read plan and campaign files from base branch**

<details>
<summary>Arguments</summary>

```json
{
  "command": "$ErrorActionPreference='Stop'; $planPath='3-arrival-deadline-control-remove-before-merge/add-change-arrival-deadline-feature-ignorance-reduction-plan.md'; $campaignPath='3-arrival-deadline-control-remove-before-merge/shepherd-campaign.json'; $lessonsPath='3-arrival-deadline-control-remove-before-merge/campaign-lessons.md'; $plan=& git show \"experiment/shepherd-control:$planPath\" 2>&1; $planExit=$LASTEXITCODE; if($planExit -ne 0){throw ($plan|Out-String)}; $campaign=& git show \"experiment/shepherd-control:$campaignPath\" 2>&1; $campaignExit=$LASTEXITCODE; if($campaignExit -ne 0){throw ($campaign|Out-String)}; $lessons=& git cat-file -e \"experiment/shepherd-control:$lessonsPath\" 2>&1; $lessonsExit=$LASTEXITCODE; if($lessonsExit -ne 0){throw ($lessons|Out-String)}; \"---PLAN---\"; $plan; \"---CAMPAIGN---\"; $campaign; \"---LESSONS-EXISTS---\"; 'true'",
  "description": "Read plan and campaign files from base branch",
  "initial_wait": 30,
  "mode": "sync"
}
```

</details>

<details>
<summary>12 lines</summary>

```
Output too large to read at once (34.0 KB). Saved to: C:\Users\edburns\AppData\Local\Temp\1788545492906-copilot-tool-output-25016-ea72dca8-cebe-4e5e-8015-29c5b7255d69.txt
Consider using tools like rg (for searching), head/tail (for viewing start/end), view with view_range (for specific sections), or jq (for JSON) to examine portions of the output.

Preview (first 500 chars):
---PLAN---
# Implementation plan: Change Arrival Deadline Date (`eclipse-ee4j/cargotracker#64`)

Human DRI: Ed Burns
Starting commit: `9b9f311b2a3a2854bdac947593950d9edb6bca7d` (`Make the system ready for implementation`)
Working directory: `/home/edburns/workareas/cargotracker-01/`
Runtime baseline: Java 17, Java EE 7 (`javax.*`), Open Liberty 26.0.0.8, PrimeFaces 8.0
Baseline run instructions: `README.md`
Baseline preparation prompt: `dd-3058828-cargotracker-remove-before-merge/20260902-make-e
<shellId: 1 completed with exit code 0>
```

</details>


---

<sub>42s</sub>

### Copilot

The preflight passed: the base branch is valid, parent #3 is open with no existing children, and this user-owned repository will use untyped issues. I’m now extracting every resolved decision, task boundary, and research finding into the five drafts.

---

<sub>48s</sub>

### `view`

**view the file at C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md.**

C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md

<details>
<summary>679 lines</summary>

````
# Implementation plan: Change Arrival Deadline Date (`eclipse-ee4j/cargotracker#64`)

Human DRI: Ed Burns
Starting commit: `9b9f311b2a3a2854bdac947593950d9edb6bca7d` (`Make the system ready for implementation`)
Working directory: `/home/edburns/workareas/cargotracker-01/`
Runtime baseline: Java 17, Java EE 7 (`javax.*`), Open Liberty 26.0.0.8, PrimeFaces 8.0
Baseline run instructions: `README.md`
Baseline preparation prompt: `dd-3058828-cargotracker-remove-before-merge/20260902-make-e7b651f-run-with-production-baseline.md`
Historical issue: `eclipse-ee4j/cargotracker#64`

Related directories and files:

- `src/main/java/org/eclipse/cargotracker/application/`
- `src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/`
- `src/main/java/org/eclipse/cargotracker/interfaces/booking/web/`
- `src/main/webapp/admin/dialogs/`
- `src/main/webapp/admin/tables/listNotRouted.xhtml`
- `src/test/java/org/eclipse/cargotracker/application/BookingServiceTest.java`

---

## Goal

Add an Administration dashboard operation that lets a shipping administrator
change the arrival deadline of a cargo listed in the **Not Routed Cargo** table.
The operation must preserve Cargo Tracker's layered architecture:

1. The application service owns the domain mutation.
2. The booking facade shields the web layer from domain types.
3. A JSF backing bean loads and submits the editable date.
4. A PrimeFaces dynamic dialog presents the editor.
5. The existing Not Routed Cargo table opens the dialog and refreshes after a
   successful update.

### User-visible acceptance behavior

Using the stable sample cargo `DEF789`:

1. Start the application with Java 17:

   ```bash
   ./mvnw clean package -Popenliberty liberty:run
   ```

2. Open `http://localhost:8080/cargo-tracker/`.
3. Select **Administration**.
4. Find `DEF789` in the **Not Routed Cargo** table.
5. The Deadline cell displays its date together with an edit icon.
6. Hovering over the deadline displays:
   `Click to change cargo arrival deadline date.`
7. Selecting the deadline opens a modal dialog titled **Change Deadline**.
8. The dialog displays the cargo's origin and destination as read-only
   context.
9. The date editor is initialized to the cargo's current arrival deadline.
10. Selecting a different date and pressing **Update** closes the dialog and
    refreshes the Administration view.
11. The new date is shown in the Not Routed Cargo table.
12. Reloading the page continues to show the new date for the lifetime of the
    running in-memory sample application.
13. Pressing **Cancel** closes the dialog without changing the deadline.

### Domain acceptance behavior

Changing the deadline must:

- locate the cargo by `TrackingId`;
- preserve its existing origin;
- preserve its existing destination;
- replace only the arrival deadline in its `RouteSpecification`;
- apply the specification through `Cargo.specifyNewRoute(...)`;
- preserve the currently assigned itinerary rather than silently discarding
  it;
- allow the domain model to recalculate routing status and delivery-derived
  values against the new route specification;
- persist the changed cargo through `CargoRepository.store(...)`.

### Hard scope constraints

- Begin from commit `9b9f311b2a3a2854bdac947593950d9edb6bca7d`.
- Preserve Java EE 7 and the `javax.*` namespace.
- Preserve the Java 7 source/target level used by this historical codebase.
- Run the application on JDK 17 using the existing Open Liberty profile.
- Do not migrate the application to Jakarta EE 8+, Jakarta EE 9+, Spring, or a
  different UI framework.
- Do not replace the in-memory Derby configuration or the Open Liberty runtime.
- Do not redesign unrelated cargo booking, routing, destination editing,
  messaging, batch, REST, or persistence behavior.
- Do not copy commits or files from feature-bearing branches. This plan is the
  implementation specification.
- Implement the five build issues below in order. Each issue must be complete
  and gated before the next issue begins.

---

## Completed phases

### Phase 1 ✅ — Establish a runnable feature-absent baseline

- Commit `9b9f311b2a3a2854bdac947593950d9edb6bca7d` is based on the historical
  feature-absent commit and contains only the compatibility work needed to run
  the sample on JDK 17 and Open Liberty.
- `./mvnw clean package -Popenliberty liberty:run` starts the application.
- The home page and Administration flows return HTTP 200.
- JSF view metadata is placed at `UIViewRoot` scope for MyFaces compatibility.
- The internal routing REST client works without a Jersey/MOXy classloading
  conflict.
- The scheduled batch job has the local authorization it needs.

### Phase 2 ✅ — Verify the before and after user experience

- Before implementation, `DEF789` appears in the Not Routed Cargo table with a
  plain-text deadline and no edit operation.
- The neighboring Destination column demonstrates the existing PrimeFaces
  dynamic-dialog interaction pattern.
- The desired after behavior has been manually exercised: open the deadline
  editor, choose a new date, update, refresh the table, and observe the
  persisted value.
- The historical architectural boundaries and affected files have been
  identified.

---

## Phase 3 — Ignorance reduction: questions to answer before writing code

Resolve these questions before production implementation begins. The
recommendations intentionally define the desired design closely enough that an
implementing agent should not need to invent a different architecture.

### 3.1 — Which cargos expose the edit operation?

**Question:** Should deadline editing be exposed for all cargos or only for
cargos displayed in the Not Routed Cargo table?

The requested feature originates in the Administration dashboard's Not Routed
Cargo table. Other tables represent routed, misrouted, claimed, or otherwise
progressed cargo. Adding the affordance to every table would expand the feature
and require additional business rules about changing deadlines after handling
has begun.

| Option | UI scope | Trade-off |
|--------|----------|-----------|
| A | Not Routed Cargo table only | Matches the requested feature and the established destination-edit affordance. |
| B | Every Administration cargo table | Broader capability, but introduces lifecycle and authorization questions outside the request. |
| C | Cargo details page only | Avoids table complexity but does not meet the requested dashboard interaction. |

The application-service operation itself does not need to encode a UI-table
restriction. It should accept a tracking ID and apply the domain mutation to
the located cargo. The presentation layer determines where the operation is
offered.

**Recommendation:** Option A. Add the edit affordance only to
`src/main/webapp/admin/tables/listNotRouted.xhtml`. Keep the application
operation generally usable for a valid cargo.

**Resolution:**

Select Option A. Expose the edit affordance only in
`src/main/webapp/admin/tables/listNotRouted.xhtml`. The application and facade
operations remain generally callable for any cargo that can be found by
tracking ID; they do not encode knowledge of dashboard table membership.

### 3.2 — What is the exact domain mutation?

**Question:** Should the feature mutate the existing `RouteSpecification`, add
a setter to `Cargo`, or replace the specification using the existing domain
operation?

`RouteSpecification` is a value object describing origin, destination, and
arrival deadline. The existing `changeDestination(...)` implementation already
establishes the correct pattern: create a replacement specification, call
`Cargo.specifyNewRoute(...)`, and store the aggregate.

Proposed application-service shape:

```java
void changeDeadline(TrackingId trackingId, Date deadline);
```

Proposed implementation:

```java
Cargo cargo = cargoRepository.find(trackingId);
RouteSpecification specification = new RouteSpecification(
        cargo.getOrigin(),
        cargo.getRouteSpecification().getDestination(),
        deadline);

cargo.specifyNewRoute(specification);
cargoRepository.store(cargo);
```

Calling `specifyNewRoute(...)` is significant. It lets the aggregate recalculate
delivery and routing status relative to the new specification. Direct field
mutation or a persistence-only update would bypass that behavior.

**Recommendation:** Replace the `RouteSpecification` through
`Cargo.specifyNewRoute(...)`. Preserve origin, destination, and itinerary.
Persist using the existing repository. Do not add a deadline setter to the
domain model.

**Resolution:**

Use the same aggregate-update pattern as `changeDestination(...)`. Add
`BookingService.changeDeadline(TrackingId, Date)` and implement it by loading
the cargo, constructing a new `RouteSpecification` from the existing origin,
existing destination, and supplied deadline, calling
`cargo.specifyNewRoute(...)`, and storing the cargo through
`cargoRepository.store(...)`. Do not add mutable deadline setters to the domain
objects.

### 3.3 — What should happen to an existing itinerary and delivery state?

**Question:** When a routed cargo's deadline changes, should its itinerary be
cleared, retained, or recomputed?

Although the UI initially exposes the feature only for unrouted cargo, the
application operation should have deterministic domain behavior if invoked for
a routed cargo. The existing `changeDestination(...)` behavior preserves the
assigned itinerary and lets `Cargo.specifyNewRoute(...)` recalculate whether
that itinerary still satisfies the new specification.

The core application test should deliberately invoke the operation after:

1. booking a cargo;
2. requesting route candidates;
3. assigning an itinerary;
4. changing its destination;
5. changing its deadline.

This sequence verifies that the feature uses the aggregate correctly rather
than assuming the cargo always has an empty itinerary.

**Recommendation:** Preserve the itinerary. Let the domain model recompute
routing and delivery-derived state. Assert all unaffected fields explicitly in
`BookingServiceTest`.

**Resolution:**

Retain the existing itinerary. Do not clear, replace, or reroute it as part of
the deadline change. `Cargo.specifyNewRoute(...)` recalculates the delivery
snapshot and routing status against the replacement specification. In the
established sequential application test, the assigned itinerary remains
unchanged and the cargo remains `MISROUTED` after the deadline changes.

### 3.4 — What type crosses the facade boundary?

**Question:** Should the booking facade accept a `Date`, a formatted string, or
a newly introduced request DTO?

The existing facade already uses `java.util.Date` for
`bookNewCargo(...)`. Introducing another representation for this one operation
would create unnecessary conversion code and depart from the historical
application style.

Proposed facade shape:

```java
void changeDeadline(String trackingId, Date arrivalDeadline);
```

The implementation converts only the identifier:

```java
bookingService.changeDeadline(
        new TrackingId(trackingId),
        arrivalDeadline);
```

**Recommendation:** Use `String` for the tracking ID and `java.util.Date` for
the deadline. Do not expose `TrackingId`, `Cargo`, or `RouteSpecification` to
the JSF layer and do not introduce a new DTO solely for this command.

**Resolution:**

Add `void changeDeadline(String trackingId, Date arrivalDeadline)` to
`BookingServiceFacade`. `DefaultBookingServiceFacade` converts the string to
`new TrackingId(trackingId)` and passes the same `Date` to
`BookingService.changeDeadline(...)`. No new command DTO or formatted-string
service parameter is introduced.

### 3.5 — How is the DTO's formatted deadline converted for editing?

**Question:** `CargoRoute` exposes its deadline as formatted strings, while
`p:datePicker` binds naturally to `java.util.Date`. How should the backing bean
initialize the editor?

At the starting commit:

- `CargoRoute.getArrivalDeadline()` returns
  `MM/dd/yyyy hh:mm a z`.
- `CargoRoute.getArrivalDeadlineDate()` returns only the date component.
- The table displays `getArrivalDeadlineDate()`.

Options:

| Option | Approach | Trade-off |
|--------|----------|-----------|
| A | Parse `cargo.getArrivalDeadlineDate()` with `MM/dd/yyyy` | Small, localized change; preserves the existing DTO contract. |
| B | Add a `Date` property to `CargoRoute` | Cleaner typing, but broadens a DTO used throughout the application. |
| C | Reload the domain object in the backing bean | Violates the facade boundary. |

The formatter/parser must be created per operation or per view bean; do not add
a shared mutable `SimpleDateFormat`.

**Recommendation:** Option A. Load `CargoRoute` through
`BookingServiceFacade.loadCargoForRouting(trackingId)` and parse
`cargo.getArrivalDeadlineDate()` using `new SimpleDateFormat("MM/dd/yyyy")`.
Surface an explicit failure if the existing DTO value cannot be parsed; do not
silently submit a null date.

**Resolution:**

Use Option A and keep date conversion inside the view-scoped editor bean. The
existing implementation loads the `CargoRoute`, creates
`new SimpleDateFormat("MM/dd/yyyy")`, and parses the leading date portion of
`cargo.getArrivalDeadline()`. Because that value begins with `MM/dd/yyyy`,
`SimpleDateFormat.parse(...)` obtains the same date that
`getArrivalDeadlineDate()` displays. A per-load formatter is used, so no shared
mutable formatter is added.

### 3.6 — Which JSF bean scopes and interaction pattern should be used?

**Question:** Should deadline editing introduce a new navigation page, use an
inline editor, or mirror the existing Change Destination dynamic-dialog
pattern?

The baseline already contains:

- `ChangeDestination`, a CDI `@Named` and JSF `@ViewScoped` editor bean;
- `ChangeDestinationDialog`, a session-scoped JSF managed bean that opens and
  closes a PrimeFaces dynamic dialog;
- `changeDestination.xhtml`, a dialog view;
- a `dialogReturn` Ajax listener that refreshes `tableNotRouted`.

Using the same pattern minimizes changes and provides a consistent user
experience.

Proposed bean names:

```text
changeArrivalDeadlineDate
changeArrivalDeadlineDateDialog
```

**Recommendation:** Add a serializable CDI `@Named @ViewScoped`
`ChangeArrivalDeadlineDate` editor and a serializable
`@ManagedBean(name = "changeArrivalDeadlineDateDialog") @SessionScoped`
launcher. Mirror the existing destination-dialog lifecycle rather than
introducing a new navigation or inline-edit framework.

**Resolution:**

Mirror the existing Change Destination interaction. Implement
`ChangeArrivalDeadlineDate` as a serializable CDI `@Named @ViewScoped` bean and
`ChangeArrivalDeadlineDateDialog` as a serializable
`@ManagedBean(name = "changeArrivalDeadlineDateDialog") @SessionScoped` bean.
Use a PrimeFaces dynamic dialog rather than navigation to a full page or inline
cell editing.

### 3.7 — What is the dynamic-dialog contract?

**Question:** What path, request parameters, dimensions, and close result should
the PrimeFaces dialog use?

The launcher needs one parameter, `trackingId`, supplied as a
`Map<String, List<String>>`. The dialog metadata binds the parameter and invokes
the editor bean's `load()` action.

Proposed launcher contract:

```java
PrimeFaces.current().dialog().openDynamic(
        "/admin/dialogs/changeArrivalDeadlineDate.xhtml",
        options,
        params);
```

Required options:

| Option | Value |
|--------|-------|
| `modal` | `true` |
| `draggable` | `true` |
| `resizable` | `false` |
| `contentWidth` | `410` |
| `contentHeight` | `280` |

Required completion behavior:

- successful update: `closeDynamic("DONE")`;
- cancel: `closeDynamic("")`;
- caller listens for `dialogReturn` and updates `tableNotRouted`.

Because Open Liberty uses MyFaces, `<f:metadata>` must be a direct child of the
view root, before `<h:head>` and `<h:body>`. It must not be nested inside
`<h:body>`.

**Recommendation:** Use the contract above and preserve the metadata placement
required by the prepared baseline.

**Resolution:**

Open `/admin/dialogs/changeArrivalDeadlineDate.xhtml` with a single
`trackingId` request parameter and these options: modal and draggable are
`true`, resizable is `false`, content width is `410`, and content height is
`280`. Successful submission closes with `"DONE"`; cancellation closes with
the empty string. The caller handles `dialogReturn` and updates
`tableNotRouted`. Place the dialog's `<f:metadata>` directly under the root
`<html>` element, before `<h:head>` and `<h:body>`, so the known MyFaces
`UIViewRoot` requirement is satisfied.

### 3.8 — What date validation is required?

**Question:** Must the new deadline be non-null, in the future, after the
current date, or after itinerary completion?

The requested feature is an administrative correction to an existing arrival
deadline. No new domain policy about future dates is part of the request.
Inventing such a rule could reject dates accepted by existing cargo booking or
`RouteSpecification` behavior.

The UI must nevertheless prevent a null submission because the operation
requires a concrete replacement deadline.

**Recommendation:** Require a date value in the JSF form and display a normal
Faces validation message when it is absent. Do not add a new minimum-date,
future-date, or itinerary-date business rule. Continue to rely on the existing
domain model for its established invariants.

**Resolution:**

Require a non-null date selection, but add no new chronological business rule.
In particular, do not require the replacement deadline to be after today,
after the old deadline, or after every itinerary leg. Pass the selected
`java.util.Date` to the existing domain construction path and let the current
`RouteSpecification` invariants apply.

### 3.9 — How will the feature be tested on the prepared historical baseline?

**Question:** Which automated and runtime tests are mandatory, given that the
historical JUnit/Arquillian suite is configured for a remote Payara 4
container, while the prepared production baseline runs on JDK 17/Open Liberty?

The starting POM deliberately leaves `skipTests=true`. The Open Liberty profile
builds and compiles all test sources but does not provide a Liberty Arquillian
adapter. Modernizing the entire integration-test runtime is outside this
feature's scope.

The feature still needs layered evidence:

1. Extend `BookingServiceTest` with the domain/application assertions that
   specify the deadline mutation.
2. Ensure all test sources compile as part of
   `./mvnw clean package -Popenliberty`.
3. Add focused JUnit tests for facade and backing-bean delegation where they
   can run without a container, using hand-written fakes rather than adding a
   mocking framework.
4. Perform mandatory end-to-end verification against the running Open Liberty
   application.
5. Preserve the existing Payara Arquillian test path; do not delete, disable,
   or rewrite it to manufacture a passing result.

**Spike needed:** Before Issue 1 implementation, run the starting commit's
standard Open Liberty package command and record whether tests are compiled but
skipped. Confirm the new `BookingServiceTest` method can be added without
expanding the runtime modernization scope.

**Recommendation:** Treat the JDK 17/Open Liberty build plus HTTP/UI acceptance
as the mandatory executable gate. Keep the historical Arquillian test as a
precise application-layer specification and run it only when its documented
Payara environment is available.

**Resolution:**

Extend the existing sequential Arquillian `BookingServiceTest` with
`testChangeDeadline()` after `testChangeDestination()`. The test changes the
deadline by one month, reloads the cargo through JPA, and asserts the complete
set of preserved and recalculated domain state described above. The prepared
Open Liberty build compiles this test but retains the historical default
`skipTests=true`; executing that Arquillian suite still requires its documented
remote Payara environment. Therefore the mandatory executable gates are the
JDK 17 Open Liberty package/start command, direct HTTP checks, and the complete
`DEF789` browser acceptance flow. No Arquillian-runtime modernization or new
mocking dependency is part of this feature.

---

## Phase 4 — Implementation (five serial issues)

Implement these issues in order. Each issue should be a separate commit. Do not
start an issue until the previous issue's gating criteria are satisfied.

### 4.1 — Issue 1: Add the application-layer deadline change operation

**What to build**

Add the core use case to the application layer. This issue must contain no JSF
or PrimeFaces changes.

**Files to modify**

- `src/main/java/org/eclipse/cargotracker/application/BookingService.java`
- `src/main/java/org/eclipse/cargotracker/application/internal/DefaultBookingService.java`
- `src/test/java/org/eclipse/cargotracker/application/BookingServiceTest.java`

**Required API**

```java
void changeDeadline(TrackingId trackingId, Date deadline);
```

**Required implementation behavior**

1. Load the cargo using `cargoRepository.find(trackingId)`.
2. Obtain the current destination from
   `cargo.getRouteSpecification().getDestination()`.
3. Construct a replacement `RouteSpecification` from:
   - `cargo.getOrigin()`;
   - the current destination;
   - the new deadline.
4. Apply it using `cargo.specifyNewRoute(routeSpecification)`.
5. Persist using `cargoRepository.store(cargo)`.
6. Log the tracking ID and new deadline at `Level.INFO`, following the style of
   `changeDestination(...)`.

Do not:

- add a setter to `Cargo` or `RouteSpecification`;
- modify the origin or destination;
- clear or replace the itinerary directly;
- update persistence entities behind the aggregate's back.

**Tests to write first**

Append a sequential `testChangeDeadline()` case to `BookingServiceTest` after
`testChangeDestination()`. Build a new deadline one month after the test's
original `deadline`, invoke the service, reload the cargo with
`Cargo.findByTrackingId`, and assert:

- origin remains Chicago;
- destination remains Helsinki;
- stored deadline is the same calendar day as the requested new deadline;
- assigned itinerary remains unchanged;
- transport status remains `NOT_RECEIVED`;
- last known location remains `Location.UNKNOWN`;
- current voyage remains `Voyage.NONE`;
- cargo is not marked misdirected;
- estimated time of arrival is `Delivery.ETA_UNKOWN`;
- next expected activity is `Delivery.NO_ACTIVITY`;
- cargo is not unloaded at destination;
- routing status reflects the domain model's recalculation and remains
  `MISROUTED` for the established test sequence.

**Gating criteria**

- The test source compiles.
- `./mvnw clean package -Popenliberty` succeeds on JDK 17.
- No web, facade, REST, Liberty, or persistence configuration files change in
  this issue.

### 4.2 — Issue 2: Expose deadline changes through the booking facade

**What to build**

Expose the use case to presentation clients without leaking domain identifier
types into the web layer.

**Files to modify**

- `src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/BookingServiceFacade.java`
- `src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/internal/DefaultBookingServiceFacade.java`

**Optional focused test file**

- `src/test/java/org/eclipse/cargotracker/interfaces/booking/facade/internal/DefaultBookingServiceFacadeTest.java`

**Required API**

```java
void changeDeadline(String trackingId, Date arrivalDeadline);
```

**Required implementation**

```java
bookingService.changeDeadline(
        new TrackingId(trackingId),
        arrivalDeadline);
```

The facade must not:

- load and mutate `Cargo` itself;
- call `CargoRepository.store(...)`;
- parse a formatted date;
- introduce JSF or PrimeFaces types.

**Tests**

Where a container-free test is added, use a hand-written `BookingService` fake
or spy and prove that:

- the same `Date` object/value reaches the application service;
- the tracking-ID string is converted to an equivalent `TrackingId`;
- the facade delegates exactly once;
- no repository work is duplicated in the facade.

Do not add Mockito or another dependency solely for this test.

**Gating criteria**

- Existing facade consumers still compile.
- `./mvnw clean package -Popenliberty` succeeds on JDK 17.
- The application-layer test added in Issue 1 remains unchanged and compiling.

### 4.3 — Issue 3: Implement the deadline editor backing model

**What to build**

Add the view-scoped backing bean that loads a cargo's current deadline and
submits a replacement deadline through the booking facade. Do not add the
dialog launcher or XHTML in this issue.

**File to create**

- `src/main/java/org/eclipse/cargotracker/interfaces/booking/web/ChangeArrivalDeadlineDate.java`

**Required bean shape**

```java
@Named
@ViewScoped
public class ChangeArrivalDeadlineDate implements Serializable {
    private static final long serialVersionUID = 1L;

    private String trackingId;
    private CargoRoute cargo;
    private Date arrivalDeadlineDate;

    @Inject
    private BookingServiceFacade bookingServiceFacade;
}
```

Required properties and methods:

- `getTrackingId()` / `setTrackingId(String)`
- `getCargo()`
- `getArrivalDeadlineDate()` / `setArrivalDeadlineDate(Date)`
- `load()`
- `changeArrivalDeadline()`

**Load behavior**

1. Call `bookingServiceFacade.loadCargoForRouting(trackingId)`.
2. Store the returned `CargoRoute`.
3. Parse `cargo.getArrivalDeadlineDate()` using `MM/dd/yyyy`.
4. Store the resulting `Date` in `arrivalDeadlineDate`.
5. Do not query a repository or domain object directly.
6. Do not ignore a parsing failure or merely print its stack trace. Surface a
   clear application/view error consistent with existing JSF behavior.

**Submit behavior**

1. Refuse a null date through JSF validation or explicit bean validation.
2. Call
   `bookingServiceFacade.changeDeadline(trackingId, arrivalDeadlineDate)`.
3. Close the dynamic dialog with:

   ```java
   PrimeFaces.current().dialog().closeDynamic("DONE");
   ```

4. Do not close the dialog if the facade call fails.

**Tests to write**

Add a container-free JUnit test if practical, using a hand-written fake facade,
that proves:

- `load()` requests the correct tracking ID;
- `load()` converts an `MM/dd/yyyy` DTO date into the editable `Date`;
- `changeArrivalDeadline()` delegates the selected date and tracking ID;
- a malformed DTO deadline is surfaced rather than converted to null;
- a null selected date is rejected.

Do not add a mocking framework solely for these tests.

**Gating criteria**

- The bean is serializable and uses the established CDI/JSF annotations.
- The bean references only facade DTOs, not domain model classes.
- `./mvnw clean package -Popenliberty` succeeds on JDK 17.

### 4.4 — Issue 4: Implement the PrimeFaces deadline dialog

**What to build**

Add the session-scoped dialog launcher and the dynamic dialog view. The dialog
must work when addressed directly with a `trackingId` query parameter, but it
is not yet linked from the dashboard in this issue.

**Files to create**

- `src/main/java/org/eclipse/cargotracker/interfaces/booking/web/ChangeArrivalDeadlineDateDialog.java`
- `src/main/webapp/admin/dialogs/changeArrivalDeadlineDate.xhtml`

**Launcher requirements**

Use:

```java
@ManagedBean(name = "changeArrivalDeadlineDateDialog")
@SessionScoped
```

Implement:

- `showDialog(String trackingId)`
- `handleReturn(SelectEvent event)`
- `cancel()`

`showDialog(...)` must:

- set the options documented in Question 3.7;
- pass `trackingId` as a dynamic-dialog request parameter;
- open `/admin/dialogs/changeArrivalDeadlineDate.xhtml`.

`cancel()` must close the dialog without invoking the facade.

**XHTML requirements**

The page title must be:

```xhtml
<title>Change Deadline</title>
```

Place metadata directly beneath the root `<html>` element and before
`<h:head>`:

```xhtml
<f:metadata>
    <f:viewParam name="trackingId"
                 value="#{changeArrivalDeadlineDate.trackingId}"/>
    <f:viewAction action="#{changeArrivalDeadlineDate.load}"/>
</f:metadata>
```

The form must display:

- `Origin:` and `changeArrivalDeadlineDate.cargo.originName`;
- `Destination:` and
  `changeArrivalDeadlineDate.cargo.finalDestinationName`;
- `Deadline:` and a `p:datePicker` bound to
  `changeArrivalDeadlineDate.arrivalDeadlineDate`;
- **Cancel**, invoking
  `changeArrivalDeadlineDateDialog.cancel()`;
- **Update**, invoking
  `changeArrivalDeadlineDate.changeArrivalDeadline()`.

The date picker must require a value. The Update action must reload or refresh
the calling Administration view after a successful dialog close, following the
existing destination-dialog behavior.

**Runtime tests**

With the application running, request:

```text
http://localhost:8080/cargo-tracker/admin/dialogs/changeArrivalDeadlineDate.xhtml?trackingId=DEF789
```

Verify:

- HTTP 200;
- title is **Change Deadline**;
- origin and destination render;
- the existing deadline is selected;
- no `TagException`, `Parent UIComponent`, `FacesException`, or server error is
  present;
- Cancel does not change the persisted deadline;
- Update changes the deadline.

**Gating criteria**

- `./mvnw clean package -Popenliberty liberty:run` succeeds on JDK 17.
- Direct dialog loading and both actions work.
- Destination editing continues to work.
- Stop Liberty cleanly before completing the issue.

### 4.5 — Issue 5: Integrate deadline editing into the Administration dashboard

**What to build**

Replace the plain deadline text in the Not Routed Cargo table with the
PrimeFaces command-link affordance that opens the completed dialog and refreshes
the table after return.

**File to modify**

- `src/main/webapp/admin/tables/listNotRouted.xhtml`

**Required UI shape**

Within the existing Deadline column, add a `p:commandLink` that:

- calls
  `changeArrivalDeadlineDateDialog.showDialog(cargoNotRouted.trackingId)`;
- retains the displayed
  `cargoNotRouted.arrivalDeadlineDate`;
- adds the existing Font Awesome edit icon style;
- uses a stable component ID such as `arrivalDeadlineToUpdate`;
- listens for `dialogReturn`;
- invokes
  `changeArrivalDeadlineDateDialog.handleReturn`;
- updates `tableNotRouted`;
- provides the tooltip:
  `Click to change cargo arrival deadline date.`

Follow the adjacent Destination column's established structure and styling. Do
not alter tracking-ID routing or destination editing.

**End-to-end acceptance test**

1. Start from a clean build on JDK 17:

   ```bash
   ./mvnw clean package -Popenliberty liberty:run
   ```

2. Confirm the home page returns HTTP 200.
3. Open Administration and locate `DEF789`.
4. Record the original deadline.
5. Confirm the deadline now has an edit icon and tooltip.
6. Open the deadline dialog.
7. Confirm origin and destination identify the same cargo.
8. Choose a visibly different date.
9. Press **Update**.
10. Confirm the dialog closes and the Not Routed Cargo table refreshes.
11. Confirm the table shows the selected date.
12. Reload the browser and confirm the selected date remains.
13. Reopen the dialog and confirm the editor initializes to the changed date.
14. Press **Cancel** and confirm no additional change occurs.
15. Verify the Destination edit dialog still opens.
16. Verify selecting `DEF789` for routing still loads without an error page.

**Log acceptance**

The final run must contain none of:

- `<f:metadata> Parent UIComponent`;
- `TagException`;
- `VerifyError`;
- `FacesException`;
- `CWWKZ0002E` or `CWWKZ0003E`;
- recurring batch authorization failures;
- new FFDC files attributable to this feature.

Transient JMS activation-order warnings are acceptable only if all message
endpoints subsequently activate, as established by the prepared baseline.

**Final regression and scope checks**

- `./mvnw clean package -Popenliberty` succeeds.
- The existing test sources and the new deadline test compile.
- No Java EE namespace migration occurred.
- No Open Liberty, Derby, Jackson, JSF metadata, batch authorization, or REST
  compatibility fix from the starting commit was reverted.
- The feature affects only the intended application, facade, web, dialog,
  table, and test surfaces.
- Stop Liberty cleanly.

---

## Phase 5 — Documentation and implementation handoff

- Update `README.md` only if user-facing Administration capabilities are
  enumerated there; add one concise sentence that administrators can change an
  unrouted cargo's arrival deadline.
- Record the exact JDK 17 run command in the final issue or pull-request
  description:

  ```bash
  ./mvnw clean package -Popenliberty liberty:run
  ```

- Include `DEF789` and the before/after deadline values in the acceptance
  evidence.
- State explicitly that data is in-memory and resets when the application is
  rebuilt/restarted.

---

## Cross-cutting concerns

| Concern | Required handling |
|---------|--------------------|
| Domain-driven design | Mutate the aggregate through `Cargo.specifyNewRoute(...)`; do not bypass it with persistence-level field updates. |
| Layering | Web bean → booking facade → booking service → cargo repository. |
| Date handling | Use `java.util.Date` at service/facade boundaries and `MM/dd/yyyy` for the date-only editor representation. |
| Time zones | Acceptance compares the calendar date displayed by the application; do not introduce a new timezone policy in this feature. |
| Error handling | Do not silently swallow parse, lookup, validation, or persistence failures. A failed update must not look successful. |
| JSF compatibility | Keep `<f:metadata>` at view-root scope for MyFaces. |
| Bean lifecycle | Editor is CDI `@ViewScoped`; dynamic-dialog launcher mirrors the existing session-scoped JSF managed bean. |
| Accessibility | Preserve visible labels; the date editor must have an associated label and validation feedback. |
| Backward compatibility | Existing destination editing, routing, tracking, REST, messaging, batch, and startup behavior must remain intact. |
| Test discipline | Add tests before production code where practical; every issue must preserve all prior gates. |
| Experiment integrity | Implement from this specification starting at `9b9f311b2a3a2854bdac947593950d9edb6bca7d`; do not cherry-pick or inspect feature-bearing commits. |
````

</details>


---

<sub>48s</sub>

### `view`

**view the file at C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\shepherd-campaign.json.**

C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\shepherd-campaign.json

<details>
<summary>12 lines</summary>

```
{
  "schemaVersion": 1,
  "campaignId": "69e6d215-57cd-4d3e-82df-336e7bc6fe4c",
  "campaignIssueNumber": 3,
  "campaignShortname": "arrival-deadline-control",
  "repository": "edburns/dd-3059664-01-cargotracker",
  "baseBranch": "experiment/shepherd-control",
  "lessonPropagation": "off",
  "campaignMetadataDirectory": "3-arrival-deadline-control-remove-before-merge",
  "lessonsFile": "campaign-lessons.md",
  "createdAt": "2026-09-04T18:10:50Z"
}
```

</details>


---

<sub>49s</sub>

### `glob`

**3-arrival-deadline-control-remove-before-merge\****

"3-arrival-deadline-control-remove-before-merge\**"

<details>
<summary>7 matches</summary>

```
C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\shepherd-test-experiment.json
C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\shepherd-campaign.json
C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md
C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\campaign-lessons.md
C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\prompts\shepherd-task-20-20260904-1110\20260904-1110-invoke-shepherd-task-20-create-issues-from-plan-skill.ps1
C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\prompts\shepherd-task-20-20260904-1110\20260904-1110-invoke-shepherd-task-20-create-issues-from-plan-skill.md
C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\prompts\shepherd-task-20-20260904-1110\create-issues-otel-20260904-1110.jsonl
```

</details>


---

<sub>49s</sub>

### `rg`

**^#{1,6} |Resolution:|spike|diagram|decision|research|screenshot|screengrab**

"^#{1,6} |Resolution:|spike|diagram|decision|research|screenshot|screengrab" in *.md (3-arrival-deadline-control-remove-before-merge)

<details>
<summary>39 matches</summary>

```
[grep content: 37 matches across 1 file(s) under C:/Users/edburns/workareas]

dd (37 match(es)):
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:1:# Implementation plan: Change Arrival Deadline Date (`eclipse-ee4j/cargotracker#64`)
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:22:## Goal
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:35:### User-visible acceptance behavior
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:62:### Domain acceptance behavior
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:77:### Hard scope constraints
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:95:## Completed phases
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:97:### Phase 1 ✅ — Establish a runnable feature-absent baseline
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:109:### Phase 2 ✅ — Verify the before and after user experience
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:123:## Phase 3 — Ignorance reduction: questions to answer before writing code
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:129:### 3.1 — Which cargos expose the edit operation?
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:155:**Resolution:**
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:162:### 3.2 — What is the exact domain mutation?
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:201:**Resolution:**
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:211:### 3.3 — What should happen to an existing itinerary and delivery state?
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:237:**Resolution:**
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:245:### 3.4 — What type crosses the facade boundary?
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:273:**Resolution:**
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:281:### 3.5 — How is the DTO's formatted deadline converted for editing?
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:311:**Resolution:**
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:321:### 3.6 — Which JSF bean scopes and interaction pattern should be used?
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:351:**Resolution:**
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:360:### 3.7 — What is the dynamic-dialog contract?
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:401:**Resolution:**
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:412:### 3.8 — What date validation is required?
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:430:**Resolution:**
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:438:### 3.9 — How will the feature be tested on the prepared historical baseline?
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:473:**Resolution:**
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:488:## Phase 4 — Implementation (five serial issues)
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:493:### 4.1 — Issue 1: Add the application-layer deadline change operation
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:561:### 4.2 — Issue 2: Expose deadline changes through the booking facade
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:616:### 4.3 — Issue 3: Implement the deadline editor backing model
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:695:### 4.4 — Issue 4: Implement the PrimeFaces deadline dialog
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:792:### 4.5 — Issue 5: Integrate deadline editing into the Administration dashboard
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:876:## Phase 5 — Documentation and implementation handoff
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\add-change-arrival-deadline-feature-ignorance-reduction-plan.md:895:## Cross-cutting concerns
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\campaign-lessons.md:1:# Campaign lessons
  3059664- 01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\campaign-lessons.md:6:## Validated lessons
```

</details>


---

<sub>54s</sub>

### `view`

**view the file at C:\Users\edburns\.copilot\plugins\shepherd-task\scripts\validate-stage20-drafts.ps1.**

C:\Users\edburns\.copilot\plugins\shepherd-task\scripts\validate-stage20-drafts.ps1

<details>
<summary>59 lines</summary>

```
<#
.SYNOPSIS
    Validates persisted stage-20 issue bodies before GitHub mutation.
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [string]$BodyDirectory,

    [Parameter(Mandatory)]
    [ValidateRange(1, [int]::MaxValue)]
    [int]$ExpectedCount,

    [Parameter(Mandatory)]
    [ValidateSet('off', 'campaign')]
    [string]$LessonPropagation
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $BodyDirectory -PathType Container)) {
    throw "Stage-20 body directory does not exist: $BodyDirectory"
}

$bodyFiles = @(
    Get-ChildItem -LiteralPath $BodyDirectory -Filter '*-body.md' -File |
        Where-Object { $_.Name -notlike '*-observed-body.md' } |
        Sort-Object Name
)
if ($bodyFiles.Count -ne $ExpectedCount) {
    throw "Expected $ExpectedCount persisted stage-20 body files; found $($bodyFiles.Count)."
}

$requiredHeadings = @(
    '## Campaign context and required reading',
    '## Branch and execution order',
    '## Implement',
    '## Completion gates',
    '## Out of scope'
)

foreach ($bodyFile in $bodyFiles) {
    $text = [System.IO.File]::ReadAllText($bodyFile.FullName)
    $lines = [System.IO.File]::ReadAllLines($bodyFile.FullName)
    if ([string]::IsNullOrWhiteSpace($text) -or $text -notmatch "`r?`n" -or $lines.Count -le 1) {
        throw "Persisted issue body must contain physical Markdown lines: $($bodyFile.FullName)"
    }

    $firstNonblank = $lines | Where-Object { -not [string]::IsNullOrWhiteSpace($_) } | Select-Object -First 1
    if ($firstNonblank -notmatch '^##\s+\S') {
        throw "Persisted issue body must begin with a level-two heading: $($bodyFile.FullName)"
    }

    foreach ($heading in $requiredHeadings) {
        if ($lines -cnotcontains $heading) {
            throw "Persisted issue body is missing the physical heading '$heading': $($bodyFile.FullName)"
        }
    }

    $hasCampaignLessons = $lines -ccontains '## Campaign lessons (REQUIRED)'
    if ($LessonPropagation -eq 'campaign' -and -not $hasCampaignLessons) {
        throw "Treatment issue body is missing its campaign-lessons heading: $($bodyFile.FullName)"
    }
    if ($LessonPropagation -eq 'off' -and $hasCampaignLessons) {
        throw "Control issue body unexpectedly contains a campaign-lessons heading: $($bodyFile.FullName)"
    }
}

$bodyFiles
```

</details>


---

<sub>54s</sub>

### `view`

**view the file at C:\Users\edburns\.copilot\plugins\shepherd-task\scripts\verify-github-issue-body.ps1.**

C:\Users\edburns\.copilot\plugins\shepherd-task\scripts\verify-github-issue-body.ps1

<details>
<summary>165 lines</summary>

```
<#
.SYNOPSIS
    Fetches a GitHub issue through REST and verifies its body against a file.
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [ValidatePattern('^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$')]
    [string]$Repository,

    [Parameter(Mandatory)]
    [ValidateRange(1, [int]::MaxValue)]
    [int]$IssueNumber,

    [Parameter(Mandatory)]
    [string]$ExpectedBodyPath,

    [ValidateRange(1, 100)]
    [int]$MaxAttempts = 6,

    [ValidateRange(0, 300)]
    [int]$DelaySeconds = 5,

    [string]$DiagnosticPath,

    [string]$GitHubCli = 'gh'
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$PSNativeCommandUseErrorActionPreference = $false

function ConvertTo-NormalizedLineEndings {
    param([AllowEmptyString()][string]$Text)
    return $Text -replace "`r`n|`r", "`n"
}

function Test-EquivalentBody {
    param(
        [AllowEmptyString()][string]$Actual,
        [AllowEmptyString()][string]$Expected
    )

    if ($Actual -ceq $Expected) {
        return $true
    }
    if ($Actual.EndsWith("`n") -and $Actual.Substring(0, $Actual.Length - 1) -ceq $Expected) {
        return $true
    }
    if ($Expected.EndsWith("`n") -and $Expected.Substring(0, $Expected.Length - 1) -ceq $Actual) {
        return $true
    }
    return $false
}

function Get-Sha256 {
    param([AllowEmptyString()][string]$Text)

    $bytes = [System.Text.UTF8Encoding]::new($false).GetBytes($Text)
    return [Convert]::ToHexString([System.Security.Cryptography.SHA256]::HashData($bytes)).ToLowerInvariant()
}

function Get-FirstDifference {
    param(
        [AllowEmptyString()][string]$Actual,
        [AllowEmptyString()][string]$Expected
    )

    $limit = [Math]::Min($Actual.Length, $Expected.Length)
    $offset = 0
    while ($offset -lt $limit -and $Actual[$offset] -ceq $Expected[$offset]) {
        $offset++
    }
    if ($offset -eq $limit -and $Actual.Length -eq $Expected.Length) {
        return $null
    }

    $prefix = $Expected.Substring(0, [Math]::Min($offset, $Expected.Length))
    $line = ([regex]::Matches($prefix, "`n").Count) + 1
    $lastNewline = $prefix.LastIndexOf("`n", [StringComparison]::Ordinal)
    $column = if ($lastNewline -lt 0) { $offset + 1 } else { $offset - $lastNewline }
    return [ordered]@{
        offset = $offset
        line = $line
        column = $column
    }
}

function Test-TerminalGitHubFailure {
    param([string]$Message)
    return $Message -match '(?i)(HTTP\s+(401|403)|authentication|not authorized|resource not accessible)'
}

function Write-Diagnostic {
    param(
        [string]$Reason,
        [int]$Attempts,
        [AllowEmptyString()][string]$Actual,
        [AllowEmptyString()][string]$Expected
    )

    if ([string]::IsNullOrWhiteSpace($DiagnosticPath)) {
        return
    }

    $parent = Split-Path -Parent $DiagnosticPath
    if (-not [string]::IsNullOrWhiteSpace($parent) -and
        -not (Test-Path -LiteralPath $parent -PathType Container)) {
        New-Item -ItemType Directory -Path $parent | Out-Null
    }

    $diagnostic = [ordered]@{
        schemaVersion = 1
        repository = $Repository
        issueNumber = $IssueNumber
        endpoint = "repos/$Repository/issues/$IssueNumber"
        attempts = $Attempts
        observedAt = (Get-Date).ToUniversalTime().ToString('o')
        reason = $Reason
        expectedLength = $Expected.Length
        actualLength = $Actual.Length
        expectedSha256 = Get-Sha256 $Expected
        actualSha256 = Get-Sha256 $Actual
        firstDifference = Get-FirstDifference -Actual $Actual -Expected $Expected
    }
    $diagnostic | ConvertTo-Json -Depth 4 |
        Set-Content -LiteralPath $DiagnosticPath -Encoding utf8NoBOM
}

if (-not (Test-Path -LiteralPath $ExpectedBodyPath -PathType Leaf)) {
    throw "Expected issue body file not found: $ExpectedBodyPath"
}

$expected = ConvertTo-NormalizedLineEndings (
    Get-Content -LiteralPath $ExpectedBodyPath -Raw
)
$lastReason = ''
$lastActual = ''
$previousConsoleOutputEncoding = [Console]::OutputEncoding
$previousOutputEncoding = $OutputEncoding
$utf8Encoding = [System.Text.UTF8Encoding]::new($false)

try {
    [Console]::OutputEncoding = $utf8Encoding
    $OutputEncoding = $utf8Encoding

    for ($attempt = 1; $attempt -le $MaxAttempts; $attempt++) {
        $output = (& $GitHubCli api "repos/$Repository/issues/$IssueNumber" 2>&1 | Out-String).Trim()
        $exitCode = $LASTEXITCODE
        if ($exitCode -ne 0) {
            $lastReason = "GitHub REST request failed with exit code $exitCode."
            if (Test-TerminalGitHubFailure $output) {
                Write-Diagnostic -Reason $lastReason -Attempts $attempt -Actual '' -Expected $expected
                throw "Unable to fetch issue #$IssueNumber from ${Repository}: $output"
            }
        }
        else {
            try {
                $issue = $output | ConvertFrom-Json
                $lastActual = ConvertTo-NormalizedLineEndings ([string]$issue.body)
                if (Test-EquivalentBody -Actual $lastActual -Expected $expected) {
                    return $issue
                }
                $lastReason = 'GitHub issue body differs from the persisted draft.'
            }
            catch {
                $lastReason = "GitHub REST response was invalid JSON: $($_.Exception.Message)"
            }
        }

        if ($attempt -lt $MaxAttempts) {
            Write-Warning "$lastReason Retrying issue #$IssueNumber body verification ($attempt/$MaxAttempts)."
            if ($DelaySeconds -gt 0) {
                Start-Sleep -Seconds $DelaySeconds
            }
        }
    }

    Write-Diagnostic -Reason $lastReason -Attempts $MaxAttempts -Actual $lastActual -Expected $expected
    $diagnosticSuffix = if ([string]::IsNullOrWhiteSpace($DiagnosticPath)) {
        ''
    }
    else {
        " Diagnostic: $DiagnosticPath"
    }
    throw "Issue #$IssueNumber body verification failed after $MaxAttempts attempts. $lastReason$diagnosticSuffix"
}
finally {
    $OutputEncoding = $previousOutputEncoding
    [Console]::OutputEncoding = $previousConsoleOutputEncoding
}
```

</details>


---

<sub>1m 49s</sub>

### `apply_patch`

<details>
<summary>Arguments</summary>

````json
"*** Begin Patch\n*** Add File: 3-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20260904-1110/issue-bodies/01-4-1-body.md\n+## Campaign context and required reading\n+\n+On the `experiment/shepherd-control` branch, the directory `3-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.\n+\n+Read the entire plan before working. Then re-read these exact sections:\n+\n+- `## Goal`, including `### Domain acceptance behavior` and `### Hard scope constraints`\n+- `### 3.2 — What is the exact domain mutation?`\n+- `### 3.3 — What should happen to an existing itinerary and delivery state?`\n+- `### 3.9 — How will the feature be tested on the prepared historical baseline?`\n+- `### 4.1 — Issue 1: Add the application-layer deadline change operation`\n+- `## Cross-cutting concerns`\n+\n+The resolved design is mandatory: add `BookingService.changeDeadline(TrackingId, Date)`, load the cargo, construct a replacement `RouteSpecification` using the existing origin and destination plus the supplied deadline, apply it through `Cargo.specifyNewRoute(...)`, and persist through `CargoRepository.store(...)`. Preserve the assigned itinerary and let the aggregate recalculate delivery and routing state; in the established sequential test the cargo remains `MISROUTED`.\n+\n+Research established that the prepared Open Liberty build compiles test sources but retains historical `skipTests=true`; the Arquillian suite still requires its documented remote Payara environment. Treat the JDK 17 Open Liberty package gate as executable evidence while retaining the Arquillian test as the application-layer specification. Implement production code from the plan and repository conventions, not from research/spike source code.\n+\n+## Branch and execution order\n+\n+Target `experiment/shepherd-control` from remote `origin`. This is task 1 of 5. The tasks are assigned, completed, and merged serially in plan order. Do not start work until this issue is assigned; task 2 must not begin until this task is complete, its gates pass, and its PR is merged to the base branch.\n+\n+Begin from the feature-absent baseline represented by the base branch. Do not cherry-pick, copy, or inspect feature-bearing commits or branches. Keep this issue to one coherent application-layer change.\n+\n+## Implement\n+\n+Modify only:\n+\n+- `src/main/java/org/eclipse/cargotracker/application/BookingService.java`\n+- `src/main/java/org/eclipse/cargotracker/application/internal/DefaultBookingService.java`\n+- `src/test/java/org/eclipse/cargotracker/application/BookingServiceTest.java`\n+\n+Add this application API:\n+\n+```java\n+void changeDeadline(TrackingId trackingId, Date deadline);\n+```\n+\n+Implement it in `DefaultBookingService` by:\n+\n+1. Loading with `cargoRepository.find(trackingId)`.\n+2. Reading the current destination from `cargo.getRouteSpecification().getDestination()`.\n+3. Constructing a new `RouteSpecification` from `cargo.getOrigin()`, that current destination, and `deadline`.\n+4. Calling `cargo.specifyNewRoute(routeSpecification)`.\n+5. Calling `cargoRepository.store(cargo)`.\n+6. Logging the tracking ID and deadline at `Level.INFO` in the style of `changeDestination(...)`.\n+\n+Write the test first. Append sequential `testChangeDeadline()` after `testChangeDestination()` in `BookingServiceTest`. Create a deadline one month after the test's original `deadline`, invoke the service, reload using `Cargo.findByTrackingId`, and assert:\n+\n+- origin is still Chicago and destination is still Helsinki;\n+- the stored deadline is the same calendar day as requested;\n+- the assigned itinerary is unchanged;\n+- transport status is `NOT_RECEIVED`;\n+- last known location is `Location.UNKNOWN`;\n+- current voyage is `Voyage.NONE`;\n+- the cargo is not misdirected;\n+- ETA is `Delivery.ETA_UNKOWN`;\n+- next expected activity is `Delivery.NO_ACTIVITY`;\n+- the cargo is not unloaded at destination;\n+- routing status remains `MISROUTED`.\n+\n+Use the repository's existing calendar/date assertion style so the test discriminates the requested date without introducing a timezone policy.\n+\n+## Completion gates\n+\n+- The added test source compiles in its established sequential position and explicitly proves both the changed deadline and all preserved/recalculated state listed above.\n+- `./mvnw clean package -Popenliberty` succeeds on JDK 17.\n+- Review the diff and confirm only the three listed files changed.\n+- Confirm no direct deadline setter was introduced and persistence was not updated behind the aggregate.\n+- Confirm existing application APIs and the `changeDestination(...)` behavior remain intact.\n+\n+## Out of scope\n+\n+Do not change facade, JSF, PrimeFaces, XHTML, REST, Liberty, Derby, persistence configuration, dependencies, or Java EE namespaces. Do not clear, replace, or reroute the itinerary. Do not add setters to `Cargo` or `RouteSpecification`. Do not modernize Arquillian/Payara, enable the historical suite by changing global test configuration, add a mocking framework, or invent new deadline chronology rules.\n*** Add File: 3-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20260904-1110/issue-bodies/02-4-2-body.md\n+## Campaign context and required reading\n+\n+On the `experiment/shepherd-control` branch, the directory `3-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.\n+\n+Read the entire plan before working. Then re-read these exact sections:\n+\n+- `## Goal`, including `### Domain acceptance behavior` and `### Hard scope constraints`\n+- `### 3.2 — What is the exact domain mutation?`\n+- `### 3.4 — What type crosses the facade boundary?`\n+- `### 3.9 — How will the feature be tested on the prepared historical baseline?`\n+- `### 4.2 — Issue 2: Expose deadline changes through the booking facade`\n+- `## Cross-cutting concerns`\n+\n+The resolved boundary is mandatory: `BookingServiceFacade` accepts a tracking-ID `String` and the selected `java.util.Date`; `DefaultBookingServiceFacade` converts only the identifier to `new TrackingId(trackingId)` and delegates the same date to the application service. No domain aggregate, repository, formatted date string, JSF type, or new command DTO crosses or is introduced at this boundary.\n+\n+Research established that tests compile in the JDK 17/Open Liberty build while historical Arquillian execution remains tied to remote Payara. A container-free facade test may use a hand-written fake, but no mocking dependency may be added. Implement from production interfaces and repository conventions, not from research/spike source code.\n+\n+## Branch and execution order\n+\n+Target `experiment/shepherd-control` from remote `origin`. This is task 2 of 5. The tasks are assigned, completed, and merged serially in plan order. Do not start until task 1 is complete, gated, and merged and this issue is assigned. Task 3 must wait for this task's successful merge.\n+\n+The base branch must already contain task 1's `BookingService.changeDeadline(TrackingId, Date)` operation and application test. Preserve both unchanged.\n+\n+## Implement\n+\n+Modify:\n+\n+- `src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/BookingServiceFacade.java`\n+- `src/main/java/org/eclipse/cargotracker/interfaces/booking/facade/internal/DefaultBookingServiceFacade.java`\n+\n+Optionally add:\n+\n+- `src/test/java/org/eclipse/cargotracker/interfaces/booking/facade/internal/DefaultBookingServiceFacadeTest.java`\n+\n+Add this facade API:\n+\n+```java\n+void changeDeadline(String trackingId, Date arrivalDeadline);\n+```\n+\n+Implement exact delegation:\n+\n+```java\n+bookingService.changeDeadline(\n+        new TrackingId(trackingId),\n+        arrivalDeadline);\n+```\n+\n+Follow existing facade method placement, imports, naming, and transaction/delegation style. The facade must delegate once and must not reload or mutate the cargo.\n+\n+If a focused test can run without a container under existing test infrastructure, use a hand-written `BookingService` fake or spy to prove:\n+\n+- the string becomes an equivalent `TrackingId`;\n+- the same `Date` object/value reaches the application service;\n+- delegation occurs exactly once;\n+- the facade performs no repository work.\n+\n+Do not force a test architecture incompatible with the historical suite; compilation and precise delegation are required regardless.\n+\n+## Completion gates\n+\n+- Existing facade consumers compile.\n+- The facade signature uses `String` and `java.util.Date` exactly as resolved.\n+- A focused test, if practical under existing infrastructure, discriminates identifier conversion, date preservation, and single delegation without new dependencies.\n+- `./mvnw clean package -Popenliberty` succeeds on JDK 17.\n+- Task 1's application-layer test remains unchanged and compiles.\n+- Diff inspection confirms no repository/domain mutation or date parsing was added to the facade.\n+\n+## Out of scope\n+\n+Do not modify application-layer behavior from task 1, web beans, XHTML, PrimeFaces, repositories, domain objects, persistence, runtime configuration, or dependencies. Do not add a command DTO, accept formatted date strings, expose `TrackingId` to presentation clients, or add Mockito or another mocking framework.\n*** Add File: 3-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20260904-1110/issue-bodies/03-4-3-body.md\n+## Campaign context and required reading\n+\n+On the `experiment/shepherd-control` branch, the directory `3-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.\n+\n+Read the entire plan before working. Then re-read these exact sections:\n+\n+- `## Goal`, including `### User-visible acceptance behavior` and `### Hard scope constraints`\n+- `### 3.4 — What type crosses the facade boundary?`\n+- `### 3.5 — How is the DTO's formatted deadline converted for editing?`\n+- `### 3.6 — Which JSF bean scopes and interaction pattern should be used?`\n+- `### 3.8 — What date validation is required?`\n+- `### 3.9 — How will the feature be tested on the prepared historical baseline?`\n+- `### 4.3 — Issue 3: Implement the deadline editor backing model`\n+- `## Cross-cutting concerns`\n+\n+Resolved decisions: the editor is a serializable CDI `@Named @ViewScoped` bean. It communicates only through `BookingServiceFacade` and `CargoRoute`. On load it parses the DTO's date-only display value with a per-load `new SimpleDateFormat(\"MM/dd/yyyy\")`; no shared mutable formatter or DTO expansion is allowed. A malformed value must surface clearly. Submission requires a non-null `Date`, delegates through the facade, and closes with `\"DONE\"` only after success. No future-date, after-old-deadline, or itinerary chronology rule is added.\n+\n+Research established that the existing formatted arrival deadline begins with `MM/dd/yyyy` and that the date-only representation is the established editor value. Tests compile under the Open Liberty build even though historical Arquillian execution remains remote-Payara-specific. Implement from production contracts, not research/spike source code.\n+\n+## Branch and execution order\n+\n+Target `experiment/shepherd-control` from remote `origin`. This is task 3 of 5. The tasks are assigned, completed, and merged serially in plan order. Begin only after tasks 1 and 2 are merged and this issue is assigned. Task 4 must wait until this task passes its gates and merges.\n+\n+Use the facade operation delivered by task 2. Do not duplicate task 1 or 2 behavior in the web layer.\n+\n+## Implement\n+\n+Create:\n+\n+- `src/main/java/org/eclipse/cargotracker/interfaces/booking/web/ChangeArrivalDeadlineDate.java`\n+\n+Use this required shape:\n+\n+```java\n+@Named\n+@ViewScoped\n+public class ChangeArrivalDeadlineDate implements Serializable {\n+    private static final long serialVersionUID = 1L;\n+\n+    private String trackingId;\n+    private CargoRoute cargo;\n+    private Date arrivalDeadlineDate;\n+\n+    @Inject\n+    private BookingServiceFacade bookingServiceFacade;\n+}\n+```\n+\n+Provide:\n+\n+- `getTrackingId()` and `setTrackingId(String)`;\n+- `getCargo()`;\n+- `getArrivalDeadlineDate()` and `setArrivalDeadlineDate(Date)`;\n+- `load()`;\n+- `changeArrivalDeadline()`.\n+\n+`load()` must call `bookingServiceFacade.loadCargoForRouting(trackingId)`, store the returned `CargoRoute`, parse `cargo.getArrivalDeadlineDate()` with a new per-load `SimpleDateFormat(\"MM/dd/yyyy\")`, and store the result. Do not access domain objects or repositories. Handle parse failure using the application's established JSF error mechanism; do not swallow it, print a stack trace, or convert it to null.\n+\n+`changeArrivalDeadline()` must reject a null selected date with clear JSF validation/error behavior, call `bookingServiceFacade.changeDeadline(trackingId, arrivalDeadlineDate)`, and only after successful return call:\n+\n+```java\n+PrimeFaces.current().dialog().closeDynamic(\"DONE\");\n+```\n+\n+Do not close the dialog when validation or facade work fails.\n+\n+If practical with existing infrastructure, add a container-free JUnit test using a hand-written facade fake. It must prove correct tracking-ID loading, `MM/dd/yyyy` conversion, exact submit delegation, surfaced malformed DTO input, and null-date rejection. Keep production injection idiomatic; use existing test-access patterns rather than weakening encapsulation solely for tests.\n+\n+## Completion gates\n+\n+- The bean is serializable with `serialVersionUID = 1L`, CDI `@Named`, JSF `@ViewScoped`, and injected `BookingServiceFacade`.\n+- Imports remain in the historical `javax.*` namespace.\n+- The bean references facade DTOs only and contains no repository/domain access.\n+- Parsing uses a non-shared formatter and failure cannot become a successful null submission.\n+- Null dates are rejected; successful calls close with `\"DONE\"`; failed calls do not close.\n+- `./mvnw clean package -Popenliberty` succeeds on JDK 17 and all prior task sources remain compiling.\n+\n+## Out of scope\n+\n+Do not create the launcher or XHTML yet. Do not modify dashboard tables, facade/application contracts, DTOs, domain classes, repository code, dependencies, or runtime configuration. Do not add a mocking framework, shared `SimpleDateFormat`, timezone policy, or chronological business rule.\n*** Add File: 3-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20260904-1110/issue-bodies/04-4-4-body.md\n+## Campaign context and required reading\n+\n+On the `experiment/shepherd-control` branch, the directory `3-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.\n+\n+Read the entire plan before working. Then re-read these exact sections:\n+\n+- `## Goal`, including `### User-visible acceptance behavior` and `### Hard scope constraints`\n+- `### Phase 2 ✅ — Verify the before and after user experience`\n+- `### 3.5 — How is the DTO's formatted deadline converted for editing?`\n+- `### 3.6 — Which JSF bean scopes and interaction pattern should be used?`\n+- `### 3.7 — What is the dynamic-dialog contract?`\n+- `### 3.8 — What date validation is required?`\n+- `### 3.9 — How will the feature be tested on the prepared historical baseline?`\n+- `### 4.4 — Issue 4: Implement the PrimeFaces deadline dialog`\n+- `## Cross-cutting concerns`\n+\n+Resolved dialog contract: mirror Change Destination with a serializable JSF-managed session-scoped launcher and the task-3 CDI view-scoped editor. Open `/admin/dialogs/changeArrivalDeadlineDate.xhtml` with one `trackingId` parameter; options are modal `true`, draggable `true`, resizable `false`, content width `410`, and content height `280`. Success closes with `\"DONE\"` and cancel with `\"\"`. MyFaces requires `<f:metadata>` directly beneath the root `<html>`, before `<h:head>` and `<h:body>`. The date picker requires a value but imposes no chronology rule.\n+\n+Research established that the neighboring Change Destination flow is the compatibility pattern and that incorrect metadata placement triggers MyFaces view-root failures. The runtime gate is JDK 17/Open Liberty; historical Arquillian remains tied to remote Payara. Implement the established findings from scratch using production code and dependencies; do not read or copy research/spike source code.\n+\n+## Branch and execution order\n+\n+Target `experiment/shepherd-control` from remote `origin`. This is task 4 of 5. The tasks are assigned, completed, and merged serially in plan order. Start only after tasks 1 through 3 are merged and this issue is assigned. Task 5 must wait for this task's gates and merge.\n+\n+Use the editor from task 3 without moving its responsibilities into the launcher or view. This task makes the dialog directly addressable but does not add the dashboard command link.\n+\n+## Implement\n+\n+Create:\n+\n+- `src/main/java/org/eclipse/cargotracker/interfaces/booking/web/ChangeArrivalDeadlineDateDialog.java`\n+- `src/main/webapp/admin/dialogs/changeArrivalDeadlineDate.xhtml`\n+\n+The launcher must be serializable and use:\n+\n+```java\n+@ManagedBean(name = \"changeArrivalDeadlineDateDialog\")\n+@SessionScoped\n+```\n+\n+Implement `showDialog(String trackingId)`, `handleReturn(SelectEvent event)`, and `cancel()`. `showDialog(...)` must pass `trackingId` as a `Map<String, List<String>>`, set the exact resolved options, and open `/admin/dialogs/changeArrivalDeadlineDate.xhtml`. `cancel()` closes with an empty string and must not call the facade. Follow the existing destination launcher for production-compatible API usage and return handling, without changing destination behavior.\n+\n+The XHTML title must be `Change Deadline`. Put this metadata directly below the root `<html>` and before `<h:head>`:\n+\n+```xhtml\n+<f:metadata>\n+    <f:viewParam name=\"trackingId\"\n+                 value=\"#{changeArrivalDeadlineDate.trackingId}\"/>\n+    <f:viewAction action=\"#{changeArrivalDeadlineDate.load}\"/>\n+</f:metadata>\n+```\n+\n+Build a form with visible, associated labels and validation feedback:\n+\n+- read-only `Origin:` showing `#{changeArrivalDeadlineDate.cargo.originName}`;\n+- read-only `Destination:` showing `#{changeArrivalDeadlineDate.cargo.finalDestinationName}`;\n+- `Deadline:` with a required `p:datePicker` bound to `#{changeArrivalDeadlineDate.arrivalDeadlineDate}`;\n+- **Cancel** invoking `#{changeArrivalDeadlineDateDialog.cancel()}`;\n+- **Update** invoking `#{changeArrivalDeadlineDate.changeArrivalDeadline()}`.\n+\n+Successful return must support refreshing/reloading the calling Administration view through the existing dialog-return pattern. Do not wire the dashboard link in this issue.\n+\n+## Completion gates\n+\n+- `./mvnw clean package -Popenliberty liberty:run` succeeds on JDK 17.\n+- A direct request to `http://localhost:8080/cargo-tracker/admin/dialogs/changeArrivalDeadlineDate.xhtml?trackingId=DEF789` returns HTTP 200.\n+- The dialog renders title, origin, destination, current selected deadline, required validation, and visible messages.\n+- Runtime logs contain no `TagException`, `Parent UIComponent`, `FacesException`, or feature-attributable server error.\n+- Cancel leaves the persisted deadline unchanged; Update changes it and closes only after success.\n+- Existing Destination editing still works.\n+- Liberty is stopped cleanly before completion.\n+\n+## Out of scope\n+\n+Do not modify `listNotRouted.xhtml` or expose the operation from any dashboard table yet. Do not add navigation pages, inline editing, chronology rules, Jakarta namespace migration, runtime/dependency changes, or repository/domain access. Do not place metadata inside `<h:body>`, and do not alter the existing destination dialog.\n*** Add File: 3-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20260904-1110/issue-bodies/05-4-5-body.md\n+## Campaign context and required reading\n+\n+On the `experiment/shepherd-control` branch, the directory `3-arrival-deadline-control-remove-before-merge` contains the plan (`add-change-arrival-deadline-feature-ignorance-reduction-plan.md`) and supporting resources (diagrams, decision records). Spike subdirectories are research artifacts — read the plan's Resolution sections for findings, not the spike source code.\n+\n+Read the entire plan before working. Then re-read these exact sections:\n+\n+- `## Goal`, including `### User-visible acceptance behavior`, `### Domain acceptance behavior`, and `### Hard scope constraints`\n+- `### Phase 2 ✅ — Verify the before and after user experience`\n+- `### 3.1 — Which cargos expose the edit operation?`\n+- `### 3.6 — Which JSF bean scopes and interaction pattern should be used?`\n+- `### 3.7 — What is the dynamic-dialog contract?`\n+- `### 3.8 — What date validation is required?`\n+- `### 3.9 — How will the feature be tested on the prepared historical baseline?`\n+- `### 4.5 — Issue 5: Integrate deadline editing into the Administration dashboard`\n+- `## Phase 5 — Documentation and implementation handoff`\n+- `## Cross-cutting concerns`\n+\n+Resolved scope: expose deadline editing only in `src/main/webapp/admin/tables/listNotRouted.xhtml`; application/facade operations remain generally callable. Mirror the adjacent Destination command-link structure. The completed dynamic dialog returns `\"DONE\"` on success and the caller listens for `dialogReturn` and updates `tableNotRouted`. Require a date but add no future/relative-date rule.\n+\n+Research established the neighboring Destination column as the compatible PrimeFaces interaction pattern and the prepared Open Liberty runtime as the mandatory executable environment. The historical test suite compiles but remains skipped by default and tied to remote Payara for execution. Implement production behavior from the plan and existing production code; do not read or copy research/spike source code.\n+\n+## Branch and execution order\n+\n+Target `experiment/shepherd-control` from remote `origin`. This is task 5 of 5. The tasks are assigned, completed, and merged serially in plan order. Start only after tasks 1 through 4 are complete, gated, merged, and this issue is assigned.\n+\n+Use the completed service, facade, editor, launcher, and dialog already present on the base branch. This task is the final integration and end-to-end gate; do not reimplement earlier layers.\n+\n+## Implement\n+\n+Modify:\n+\n+- `src/main/webapp/admin/tables/listNotRouted.xhtml`\n+\n+Within the existing Deadline column, replace plain deadline text with a `p:commandLink` that:\n+\n+- calls `#{changeArrivalDeadlineDateDialog.showDialog(cargoNotRouted.trackingId)}`;\n+- continues to display `#{cargoNotRouted.arrivalDeadlineDate}`;\n+- includes the existing Font Awesome edit-icon style used by Destination;\n+- uses a stable ID such as `arrivalDeadlineToUpdate`;\n+- contains a `p:ajax` listener for `dialogReturn`;\n+- invokes `#{changeArrivalDeadlineDateDialog.handleReturn}`;\n+- updates `tableNotRouted`;\n+- exposes the exact tooltip `Click to change cargo arrival deadline date.`\n+\n+Follow the adjacent Destination column's component nesting, styling, and Ajax pattern. Preserve tracking-ID routing and Destination editing.\n+\n+Update `README.md` only if it already enumerates user-facing Administration capabilities; if so, add one concise sentence that administrators can change an unrouted cargo's arrival deadline. Do not otherwise expand documentation scope.\n+\n+Capture final acceptance evidence with sample cargo `DEF789`, including before and after deadline values, the exact JDK 17 run command `./mvnw clean package -Popenliberty liberty:run`, and the fact that in-memory data resets when the application is rebuilt/restarted.\n+\n+## Completion gates\n+\n+Run the complete browser acceptance flow:\n+\n+1. Start cleanly on JDK 17 with `./mvnw clean package -Popenliberty liberty:run`; confirm the home page returns HTTP 200.\n+2. In Administration, find `DEF789`, record its deadline, and verify the deadline edit icon and exact tooltip.\n+3. Open the dialog and verify origin/destination identify the same cargo and the current deadline is selected.\n+4. Choose a visibly different date, press **Update**, verify the dialog closes, `tableNotRouted` refreshes, and the selected date appears.\n+5. Reload and verify persistence for the lifetime of the running in-memory application.\n+6. Reopen and verify initialization to the changed date; press **Cancel** and verify no further change.\n+7. Verify Destination editing still opens and selecting `DEF789` for routing does not produce an error page.\n+\n+Also confirm:\n+\n+- `./mvnw clean package -Popenliberty` succeeds and all existing/new test sources compile.\n+- Logs contain none of `<f:metadata> Parent UIComponent`, `TagException`, `VerifyError`, `FacesException`, `CWWKZ0002E`, `CWWKZ0003E`, recurring batch authorization failures, or new feature-attributable FFDC files.\n+- Transient JMS activation-order warnings are accepted only if all message endpoints subsequently activate.\n+- No Java EE namespace migration occurred and no prepared Liberty, Derby, Jackson, JSF metadata, batch authorization, or REST compatibility fix was reverted.\n+- Only intended application, facade, web, dialog, table, test, and conditional README surfaces comprise the completed feature.\n+- Liberty is stopped cleanly.\n+\n+## Out of scope\n+\n+Do not add the affordance to routed, misrouted, claimed, or other cargo tables. Do not alter tracking, routing, destination editing, REST, messaging, batch, persistence, Liberty, Derby, dependencies, or Java EE namespaces. Do not add lifecycle/authorization policies, chronology rules, new UI frameworks, or broad README changes.\n*** End Patch\n"
````

</details>

```
Added 5 file(s): C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\prompts\shepherd-task-20-20260904-1110\issue-bodies\01-4-1-body.md, C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\prompts\shepherd-task-20-20260904-1110\issue-bodies\02-4-2-body.md, C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\prompts\shepherd-task-20-20260904-1110\issue-bodies\03-4-3-body.md, C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\prompts\shepherd-task-20-20260904-1110\issue-bodies\04-4-4-body.md, C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\prompts\shepherd-task-20-20260904-1110\issue-bodies\05-4-5-body.md
```


---

<sub>1m 53s</sub>

### Copilot

All five specifications are persisted with lesson propagation omitted as required for control mode. I’m running the mandatory disk-based validator and a structural resolution audit before creating any issue.

---

<sub>2m 1s</sub>

### `powershell`

**Validate drafts, headings, tasks, and resolutions**

<details>
<summary>Arguments</summary>

```json
{
  "command": "$ErrorActionPreference='Stop'; $planPath='C:\\Users\\edburns\\workareas\\dd-3059664-01-cargotracker-shepherd-control\\3-arrival-deadline-control-remove-before-merge\\add-change-arrival-deadline-feature-ignorance-reduction-plan.md'; $bodyDir='C:\\Users\\edburns\\workareas\\dd-3059664-01-cargotracker-shepherd-control\\3-arrival-deadline-control-remove-before-merge\\prompts\\shepherd-task-20-20260904-1110\\issue-bodies'; $validator='C:\\Users\\edburns\\.copilot\\plugins\\shepherd-task\\scripts\\validate-stage20-drafts.ps1'; $validated=@(& $validator -BodyDirectory $bodyDir -ExpectedCount 5 -LessonPropagation off); if($validated.Count -ne 5){throw 'Draft validator did not return five files.'}; $text=[IO.File]::ReadAllText($planPath); $questionsHeading='## Phase 3 — Ignorance reduction: questions to answer before writing code'; $implementationHeading='## Phase 4 — Implementation (five serial issues)'; if(([regex]::Matches($text,[regex]::Escape($questionsHeading))).Count -ne 1){throw 'Questions heading must occur exactly once.'}; if(([regex]::Matches($text,[regex]::Escape($implementationHeading))).Count -ne 1){throw 'Implementation heading must occur exactly once.'}; $qStart=$text.IndexOf($questionsHeading); $qEnd=$text.IndexOf($implementationHeading,$qStart); $qText=$text.Substring($qStart,$qEnd-$qStart); $matches=[regex]::Matches($qText,'(?ms)^### (?<heading>3\\.[0-9]+ — .+?)\\r?\\n(?<content>.*?)(?=^### 3\\.[0-9]+ — |\\z)'); if($matches.Count -ne 9){throw \"Expected 9 blocking questions; found $($matches.Count).\"}; foreach($m in $matches){$resolution=[regex]::Match($m.Groups['content'].Value,'(?ms)^\\*\\*Resolution:\\*\\*\\s*\\r?\\n(?<block>.*)\\z'); if(-not $resolution.Success -or [string]::IsNullOrWhiteSpace(($resolution.Groups['block'].Value -replace '[*_`#>-]',''))){throw \"Unresolved: $($m.Groups['heading'].Value)\"}; \"--- $($m.Groups['heading'].Value) ---\"; $resolution.Groups['block'].Value.Trim()}; $iStart=$text.IndexOf($implementationHeading); $nextSection=$text.IndexOf(\"`n## \",$iStart+$implementationHeading.Length); if($nextSection -lt 0){$nextSection=$text.Length}; $iText=$text.Substring($iStart,$nextSection-$iStart); $taskCount=[regex]::Matches($iText,'(?m)^### 4\\.[0-9]+ — ').Count; if($taskCount -ne 5){throw \"Expected 5 direct task headings; found $taskCount.\"}; \"VALIDATED_DRAFTS=$($validated.Count)\"; \"VALIDATED_TASKS=$taskCount\"",
  "description": "Validate drafts, headings, tasks, and resolutions",
  "initial_wait": 30,
  "mode": "sync"
}
```

</details>

<details>
<summary>70 lines</summary>

```
--- 3.1 — Which cargos expose the edit operation? ---
Select Option A. Expose the edit affordance only in
`src/main/webapp/admin/tables/listNotRouted.xhtml`. The application and facade
operations remain generally callable for any cargo that can be found by
tracking ID; they do not encode knowledge of dashboard table membership.
--- 3.2 — What is the exact domain mutation? ---
Use the same aggregate-update pattern as `changeDestination(...)`. Add
`BookingService.changeDeadline(TrackingId, Date)` and implement it by loading
the cargo, constructing a new `RouteSpecification` from the existing origin,
existing destination, and supplied deadline, calling
`cargo.specifyNewRoute(...)`, and storing the cargo through
`cargoRepository.store(...)`. Do not add mutable deadline setters to the domain
objects.
--- 3.3 — What should happen to an existing itinerary and delivery state? ---
Retain the existing itinerary. Do not clear, replace, or reroute it as part of
the deadline change. `Cargo.specifyNewRoute(...)` recalculates the delivery
snapshot and routing status against the replacement specification. In the
established sequential application test, the assigned itinerary remains
unchanged and the cargo remains `MISROUTED` after the deadline changes.
--- 3.4 — What type crosses the facade boundary? ---
Add `void changeDeadline(String trackingId, Date arrivalDeadline)` to
`BookingServiceFacade`. `DefaultBookingServiceFacade` converts the string to
`new TrackingId(trackingId)` and passes the same `Date` to
`BookingService.changeDeadline(...)`. No new command DTO or formatted-string
service parameter is introduced.
--- 3.5 — How is the DTO's formatted deadline converted for editing? ---
Use Option A and keep date conversion inside the view-scoped editor bean. The
existing implementation loads the `CargoRoute`, creates
`new SimpleDateFormat("MM/dd/yyyy")`, and parses the leading date portion of
`cargo.getArrivalDeadline()`. Because that value begins with `MM/dd/yyyy`,
`SimpleDateFormat.parse(...)` obtains the same date that
`getArrivalDeadlineDate()` displays. A per-load formatter is used, so no shared
mutable formatter is added.
--- 3.6 — Which JSF bean scopes and interaction pattern should be used? ---
Mirror the existing Change Destination interaction. Implement
`ChangeArrivalDeadlineDate` as a serializable CDI `@Named @ViewScoped` bean and
`ChangeArrivalDeadlineDateDialog` as a serializable
`@ManagedBean(name = "changeArrivalDeadlineDateDialog") @SessionScoped` bean.
Use a PrimeFaces dynamic dialog rather than navigation to a full page or inline
cell editing.
--- 3.7 — What is the dynamic-dialog contract? ---
Open `/admin/dialogs/changeArrivalDeadlineDate.xhtml` with a single
`trackingId` request parameter and these options: modal and draggable are
`true`, resizable is `false`, content width is `410`, and content height is
`280`. Successful submission closes with `"DONE"`; cancellation closes with
the empty string. The caller handles `dialogReturn` and updates
`tableNotRouted`. Place the dialog's `<f:metadata>` directly under the root
`<html>` element, before `<h:head>` and `<h:body>`, so the known MyFaces
`UIViewRoot` requirement is satisfied.
--- 3.8 — What date validation is required? ---
Require a non-null date selection, but add no new chronological business rule.
In particular, do not require the replacement deadline to be after today,
after the old deadline, or after every itinerary leg. Pass the selected
`java.util.Date` to the existing domain construction path and let the current
`RouteSpecification` invariants apply.
--- 3.9 — How will the feature be tested on the prepared historical baseline? ---
Extend the existing sequential Arquillian `BookingServiceTest` with
`testChangeDeadline()` after `testChangeDestination()`. The test changes the
deadline by one month, reloads the cargo through JPA, and asserts the complete
set of preserved and recalculated domain state described above. The prepared
Open Liberty build compiles this test but retains the historical default
`skipTests=true`; executing that Arquillian suite still requires its documented
remote Payara environment. Therefore the mandatory executable gates are the
JDK 17 Open Liberty package/start command, direct HTTP checks, and the complete
`DEF789` browser acceptance flow. No Arquillian-runtime modernization or new
mocking dependency is part of this feature.

---
VALIDATED_DRAFTS=5
VALIDATED_TASKS=5
<shellId: 3 completed with exit code 0>
```

</details>


---

<sub>2m 7s</sub>

### Copilot

Every blocking question has a substantive resolution, exactly five direct implementation tasks were found, and all five persisted drafts passed the required validator. I’m beginning the one-shot create/verify/link sequence; issues will remain open and unassigned.

---

<sub>2m 38s</sub>

### `apply_patch`

<details>
<summary>Arguments</summary>

```json
"*** Begin Patch\n*** Add File: 3-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20260904-1110/run-stage20.ps1\n+[CmdletBinding()]\n+param()\n+\n+Set-StrictMode -Version Latest\n+$ErrorActionPreference = 'Stop'\n+$PSNativeCommandUseErrorActionPreference = $false\n+\n+$repository = 'edburns/dd-3059664-01-cargotracker'\n+$parentIssue = 3\n+$expectedCount = 5\n+$lessonPropagation = 'off'\n+$logDirectory = $PSScriptRoot\n+$bodyDirectory = Join-Path $logDirectory 'issue-bodies'\n+$draftValidator = 'C:\\Users\\edburns\\.copilot\\plugins\\shepherd-task\\scripts\\validate-stage20-drafts.ps1'\n+$bodyVerifier = 'C:\\Users\\edburns\\.copilot\\plugins\\shepherd-task\\scripts\\verify-github-issue-body.ps1'\n+$ledgerPath = Join-Path $logDirectory 'creation-ledger.json'\n+$resultPath = Join-Path $logDirectory 'stage-20-result.json'\n+$linkInputPath = Join-Path $logDirectory '.sub-issue-input.json'\n+\n+$specifications = @(\n+    [ordered]@{\n+        implementationSubsection = '4.1 — Issue 1: Add the application-layer deadline change operation'\n+        bodyFile = 'issue-bodies/01-4-1-body.md'\n+        title = '4.1 — Add the application-layer deadline change operation'\n+    },\n+    [ordered]@{\n+        implementationSubsection = '4.2 — Issue 2: Expose deadline changes through the booking facade'\n+        bodyFile = 'issue-bodies/02-4-2-body.md'\n+        title = '4.2 — Expose deadline changes through the booking facade'\n+    },\n+    [ordered]@{\n+        implementationSubsection = '4.3 — Issue 3: Implement the deadline editor backing model'\n+        bodyFile = 'issue-bodies/03-4-3-body.md'\n+        title = '4.3 — Implement the deadline editor backing model'\n+    },\n+    [ordered]@{\n+        implementationSubsection = '4.4 — Issue 4: Implement the PrimeFaces deadline dialog'\n+        bodyFile = 'issue-bodies/04-4-4-body.md'\n+        title = '4.4 — Implement the PrimeFaces deadline dialog'\n+    },\n+    [ordered]@{\n+        implementationSubsection = '4.5 — Issue 5: Integrate deadline editing into the Administration dashboard'\n+        bodyFile = 'issue-bodies/05-4-5-body.md'\n+        title = '4.5 — Integrate deadline editing into the Administration dashboard'\n+    }\n+)\n+\n+function Write-AtomicText {\n+    param(\n+        [Parameter(Mandatory)][string]$Path,\n+        [Parameter(Mandatory)][AllowEmptyString()][string]$Text\n+    )\n+\n+    $temporaryPath = \"$Path.$([Guid]::NewGuid().ToString('N')).tmp\"\n+    try {\n+        [IO.File]::WriteAllText($temporaryPath, $Text, [Text.UTF8Encoding]::new($false))\n+        Move-Item -LiteralPath $temporaryPath -Destination $Path -Force\n+    }\n+    finally {\n+        if (Test-Path -LiteralPath $temporaryPath) {\n+            Remove-Item -LiteralPath $temporaryPath -Force\n+        }\n+    }\n+}\n+\n+function Read-CreationLedger {\n+    $parsed = [IO.File]::ReadAllText($ledgerPath) |\n+        ConvertFrom-Json -NoEnumerate\n+    if ($parsed -isnot [System.Array]) {\n+        throw 'Creation ledger JSON root must be an array.'\n+    }\n+\n+    $ledger = [object[]]$parsed\n+    if (@($ledger | Where-Object { $_ -is [System.Array] }).Count -ne 0) {\n+        throw 'Creation ledger must not contain nested array entries.'\n+    }\n+    return $ledger\n+}\n+\n+function Write-CreationLedger {\n+    param([Parameter(Mandatory)][object[]]$Ledger)\n+\n+    $json = ConvertTo-Json -InputObject ([object[]]$Ledger) -Depth 10\n+    Write-AtomicText -Path $ledgerPath -Text $json\n+}\n+\n+function Write-StageResult {\n+    param(\n+        [Parameter(Mandatory)][ValidateSet('in_progress', 'failed', 'complete')][string]$Status,\n+        [AllowNull()][string]$OperationError\n+    )\n+\n+    $result = [ordered]@{\n+        schemaVersion = 1\n+        status = $Status\n+        ledgerFile = 'creation-ledger.json'\n+        operationError = $OperationError\n+    }\n+    Write-AtomicText -Path $resultPath -Text ($result | ConvertTo-Json -Depth 4)\n+}\n+\n+function Get-ParentChildren {\n+    $output = & gh api \"repos/$repository/issues/$parentIssue/sub_issues\" --paginate 2>&1\n+    $exitCode = $LASTEXITCODE\n+    if ($exitCode -ne 0) {\n+        throw \"Unable to query parent children: $($output | Out-String)\"\n+    }\n+    return @(($output | Out-String) | ConvertFrom-Json)\n+}\n+\n+function Reconcile-Ledger {\n+    $ledger = @(Read-CreationLedger)\n+    try {\n+        $serverChildren = @(Get-ParentChildren)\n+        $linkedIds = @($serverChildren | ForEach-Object { [long]$_.id })\n+        foreach ($entry in $ledger) {\n+            $entry.linked = $linkedIds -contains [long]$entry.id\n+        }\n+        Write-CreationLedger -Ledger $ledger\n+        return $null\n+    }\n+    catch {\n+        return \" Reconciliation also failed: $($_.Exception.Message)\"\n+    }\n+}\n+\n+$validated = @(\n+    & $draftValidator `\n+        -BodyDirectory $bodyDirectory `\n+        -ExpectedCount $expectedCount `\n+        -LessonPropagation $lessonPropagation\n+)\n+if ($validated.Count -ne $expectedCount) {\n+    throw \"Draft validation returned $($validated.Count) files instead of $expectedCount.\"\n+}\n+\n+$baselineChildren = @(Get-ParentChildren)\n+$baselineIds = @($baselineChildren | ForEach-Object { [long]$_.id })\n+\n+Write-CreationLedger -Ledger ([object[]]@())\n+Write-StageResult -Status in_progress -OperationError $null\n+\n+try {\n+    foreach ($specification in $specifications) {\n+        $bodyPath = Join-Path $logDirectory $specification.bodyFile\n+        $createOutput = & gh api \"repos/$repository/issues\" `\n+            -X POST `\n+            -f \"title=$($specification.title)\" `\n+            -F \"body=@$bodyPath\" `\n+            --jq '{id,number,node_id,html_url,title}' 2>&1\n+        $createExitCode = $LASTEXITCODE\n+        if ($createExitCode -ne 0) {\n+            throw \"Create failed for '$($specification.implementationSubsection)': $($createOutput | Out-String)\"\n+        }\n+\n+        try {\n+            $createdIssue = ($createOutput | Out-String) | ConvertFrom-Json\n+        }\n+        catch {\n+            throw \"Create returned invalid JSON for '$($specification.implementationSubsection)': $($_.Exception.Message)\"\n+        }\n+        if (-not $createdIssue.id -or -not $createdIssue.number -or -not $createdIssue.html_url) {\n+            throw \"Create returned an incomplete issue identity for '$($specification.implementationSubsection)'.\"\n+        }\n+\n+        $ledger = @(Read-CreationLedger)\n+        $ledger += [pscustomobject][ordered]@{\n+            implementationSubsection = $specification.implementationSubsection\n+            bodyFile = $specification.bodyFile\n+            id = [long]$createdIssue.id\n+            number = [int]$createdIssue.number\n+            title = [string]$createdIssue.title\n+            url = [string]$createdIssue.html_url\n+            body_verified = $false\n+            linked = $false\n+        }\n+        Write-CreationLedger -Ledger $ledger\n+\n+        try {\n+            $null = & $bodyVerifier `\n+                -Repository $repository `\n+                -IssueNumber ([int]$createdIssue.number) `\n+                -ExpectedBodyPath $bodyPath `\n+                -MaxAttempts 6 `\n+                -DelaySeconds 5 `\n+                -DiagnosticPath (Join-Path $logDirectory \"issue-$($createdIssue.number)-body-verification-failure.json\")\n+        }\n+        catch {\n+            throw \"Body verification failed for issue #$($createdIssue.number): $($_.Exception.Message)\"\n+        }\n+\n+        $ledger = @(Read-CreationLedger)\n+        ($ledger | Where-Object { $_.id -eq [long]$createdIssue.id }).body_verified = $true\n+        Write-CreationLedger -Ledger $ledger\n+\n+        Write-AtomicText -Path $linkInputPath -Text (\n+            @{sub_issue_id = [long]$createdIssue.id} | ConvertTo-Json -Compress\n+        )\n+        $linkError = $null\n+        $linked = $false\n+        for ($attempt = 1; $attempt -le 3; $attempt++) {\n+            $linkOutput = & gh api \"repos/$repository/issues/$parentIssue/sub_issues\" `\n+                -X POST `\n+                --input $linkInputPath 2>&1\n+            $linkExitCode = $LASTEXITCODE\n+            if ($linkExitCode -eq 0) {\n+                $linked = $true\n+                break\n+            }\n+            $linkError = ($linkOutput | Out-String).Trim()\n+            if ($attempt -lt 3) {\n+                Start-Sleep -Seconds 2\n+            }\n+        }\n+        if (-not $linked) {\n+            throw \"Link failed for issue #$($createdIssue.number) after 3 attempts: $linkError\"\n+        }\n+\n+        $ledger = @(Read-CreationLedger)\n+        ($ledger | Where-Object { $_.id -eq [long]$createdIssue.id }).linked = $true\n+        Write-CreationLedger -Ledger $ledger\n+    }\n+\n+    $ledger = @(Read-CreationLedger)\n+    $serverChildren = @(Get-ParentChildren)\n+    if ($serverChildren.Count -ne ($baselineChildren.Count + $ledger.Count)) {\n+        throw \"Postcondition failed: parent child count increased by $($serverChildren.Count - $baselineChildren.Count), expected $($ledger.Count).\"\n+    }\n+\n+    $newChildren = @($serverChildren | Where-Object { $baselineIds -notcontains [long]$_.id })\n+    if ($newChildren.Count -ne $ledger.Count) {\n+        throw \"Postcondition failed: found $($newChildren.Count) new children, expected $($ledger.Count).\"\n+    }\n+    for ($index = 0; $index -lt $ledger.Count; $index++) {\n+        if ([long]$newChildren[$index].id -ne [long]$ledger[$index].id) {\n+            throw \"Postcondition failed: new child order differs from implementation order at position $($index + 1).\"\n+        }\n+    }\n+\n+    foreach ($entry in $ledger) {\n+        if (-not $entry.linked -or -not $entry.body_verified) {\n+            throw \"Postcondition failed: ledger state is incomplete for issue #$($entry.number).\"\n+        }\n+        $bodyPath = Join-Path $logDirectory $entry.bodyFile\n+        try {\n+            $issue = & $bodyVerifier `\n+                -Repository $repository `\n+                -IssueNumber ([int]$entry.number) `\n+                -ExpectedBodyPath $bodyPath `\n+                -MaxAttempts 6 `\n+                -DelaySeconds 5 `\n+                -DiagnosticPath (Join-Path $logDirectory \"issue-$($entry.number)-body-verification-failure.json\")\n+        }\n+        catch {\n+            throw \"Final body verification failed for issue #$($entry.number): $($_.Exception.Message)\"\n+        }\n+        if ($issue.state -ne 'open') {\n+            throw \"Postcondition failed: issue #$($entry.number) is not open.\"\n+        }\n+        if (@($issue.assignees).Count -ne 0) {\n+            throw \"Postcondition failed: issue #$($entry.number) has an assignee.\"\n+        }\n+        if (@($serverChildren | Where-Object { [long]$_.id -eq [long]$entry.id }).Count -ne 1) {\n+            throw \"Postcondition failed: issue #$($entry.number) is not linked exactly once.\"\n+        }\n+    }\n+\n+    Write-StageResult -Status complete -OperationError $null\n+}\n+catch {\n+    $operationError = $_.Exception.Message\n+    $reconciliationError = Reconcile-Ledger\n+    Write-StageResult -Status failed -OperationError \"$operationError$reconciliationError\"\n+    throw \"$operationError$reconciliationError\"\n+}\n+finally {\n+    if (Test-Path -LiteralPath $linkInputPath) {\n+        Remove-Item -LiteralPath $linkInputPath -Force\n+    }\n+}\n+\n+@(Read-CreationLedger) | ConvertTo-Json -Depth 10\n*** End Patch\n"
```

</details>

```
Added 1 file(s): C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\prompts\shepherd-task-20-20260904-1110\run-stage20.ps1
```


---

<sub>2m 42s</sub>

### `powershell`

**Create, verify, and link five child issues**

<details>
<summary>Arguments</summary>

```json
{
  "command": "& 'C:\\Users\\edburns\\workareas\\dd-3059664-01-cargotracker-shepherd-control\\3-arrival-deadline-control-remove-before-merge\\prompts\\shepherd-task-20-20260904-1110\\run-stage20.ps1'",
  "description": "Create, verify, and link five child issues",
  "initial_wait": 180,
  "mode": "sync"
}
```

</details>

<details>
<summary>6 lines</summary>

```
run-stage20.ps1: 
Line |
   2 |  & 'C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-con …
     |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     | Cannot bind argument to parameter 'Ledger' because it is an empty array.
<shellId: 4 completed with exit code 1>
```

</details>


---

<sub>2m 45s</sub>

### Copilot

The runner stopped before any GitHub mutation because PowerShell rejected the initial empty ledger array. No issue was created; I’m correcting the empty-array binding while preserving the required flat JSON-array format, then restarting the untouched one-shot operation.

---

<sub>2m 48s</sub>

### `apply_patch`

<details>
<summary>Arguments</summary>

```json
"*** Begin Patch\n*** Update File: 3-arrival-deadline-control-remove-before-merge/prompts/shepherd-task-20-20260904-1110/run-stage20.ps1\n@@\n function Write-CreationLedger {\n-    param([Parameter(Mandatory)][object[]]$Ledger)\n+    param([Parameter(Mandatory)][AllowEmptyCollection()][object[]]$Ledger)\n*** End Patch\n"
```

</details>

```
Modified 1 file(s): C:\Users\edburns\workareas\dd-3059664-01-cargotracker-shepherd-control\3-arrival-deadline-control-remove-before-merge\prompts\shepherd-task-20-20260904-1110\run-stage20.ps1
```


---

<sub>3m 4s</sub>

### `powershell`

**Create, verify, and link five child issues**

<details>
<summary>Arguments</summary>

```json
{
  "command": "& 'C:\\Users\\edburns\\workareas\\dd-3059664-01-cargotracker-shepherd-control\\3-arrival-deadline-control-remove-before-merge\\prompts\\shepherd-task-20-20260904-1110\\run-stage20.ps1'",
  "description": "Create, verify, and link five child issues",
  "initial_wait": 180,
  "mode": "sync"
}
```

</details>

<details>
<summary>53 lines</summary>

```
[
  {
    "implementationSubsection": "4.1 — Issue 1: Add the application-layer deadline change operation",
    "bodyFile": "issue-bodies/01-4-1-body.md",
    "id": 5351534687,
    "number": 4,
    "title": "4.1 — Add the application-layer deadline change operation",
    "url": "https://github.com/edburns/dd-3059664-01-cargotracker/issues/4",
    "body_verified": true,
    "linked": true
  },
  {
    "implementationSubsection": "4.2 — Issue 2: Expose deadline changes through the booking facade",
    "bodyFile": "issue-bodies/02-4-2-body.md",
    "id": 5351534932,
    "number": 5,
    "title": "4.2 — Expose deadline changes through the booking facade",
    "url": "https://github.com/edburns/dd-3059664-01-cargotracker/issues/5",
    "body_verified": true,
    "linked": true
  },
  {
    "implementationSubsection": "4.3 — Issue 3: Implement the deadline editor backing model",
    "bodyFile": "issue-bodies/03-4-3-body.md",
    "id": 5351535172,
    "number": 6,
    "title": "4.3 — Implement the deadline editor backing model",
    "url": "https://github.com/edburns/dd-3059664-01-cargotracker/issues/6",
    "body_verified": true,
    "linked": true
  },
  {
    "implementationSubsection": "4.4 — Issue 4: Implement the PrimeFaces deadline dialog",
    "bodyFile": "issue-bodies/04-4-4-body.md",
    "id": 5351535692,
    "number": 7,
    "title": "4.4 — Implement the PrimeFaces deadline dialog",
    "url": "https://github.com/edburns/dd-3059664-01-cargotracker/issues/7",
    "body_verified": true,
    "linked": true
  },
  {
    "implementationSubsection": "4.5 — Issue 5: Integrate deadline editing into the Administration dashboard",
    "bodyFile": "issue-bodies/05-4-5-body.md",
    "id": 5351535917,
    "number": 8,
    "title": "4.5 — Integrate deadline editing into the Administration dashboard",
    "url": "https://github.com/edburns/dd-3059664-01-cargotracker/issues/8",
    "body_verified": true,
    "linked": true
  }
]
<shellId: 5 completed with exit code 0>
```

</details>


---

<sub>3m 8s</sub>

### Copilot

Created and linked five open, unassigned child issues under #3 in the required order. This user-owned repository does not support organization issue types, so they were created **without an issue type**.

| Subsection | Issue | Title |
|---|---:|---|
| 4.1 | [#4](https://github.com/edburns/dd-3059664-01-cargotracker/issues/4) | Add the application-layer deadline change operation |
| 4.2 | [#5](https://github.com/edburns/dd-3059664-01-cargotracker/issues/5) | Expose deadline changes through the booking facade |
| 4.3 | [#6](https://github.com/edburns/dd-3059664-01-cargotracker/issues/6) | Implement the deadline editor backing model |
| 4.4 | [#7](https://github.com/edburns/dd-3059664-01-cargotracker/issues/7) | Implement the PrimeFaces deadline dialog |
| 4.5 | [#8](https://github.com/edburns/dd-3059664-01-cargotracker/issues/8) | Integrate deadline editing into the Administration dashboard |

**Ordered given list:** `4,5,6,7,8`

Suggested next invocation:

```text
Invoke skill `shepherd-task-25-given-list` with:
- REPO: edburns/dd-3059664-01-cargotracker
- BASE_BRANCH: experiment/shepherd-control
- GIVEN_LIST: 4,5,6,7,8
- PLAN_DIRECTORY: 3-arrival-deadline-control-remove-before-merge
- BASE_REMOTE: origin
- CAMPAIGN_ID: 69e6d215-57cd-4d3e-82df-336e7bc6fe4c
```

The authoritative `creation-ledger.json` and completed `stage-20-result.json` are stored in the supplied log directory.

---

<sub>Generated by [GitHub Copilot CLI](https://github.com/features/copilot/cli)</sub>
