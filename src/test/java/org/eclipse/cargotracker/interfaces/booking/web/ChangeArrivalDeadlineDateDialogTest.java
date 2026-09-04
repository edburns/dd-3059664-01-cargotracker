package org.eclipse.cargotracker.interfaces.booking.web;

import org.junit.After;
import org.junit.Test;
import org.primefaces.PrimeFaces;

import java.util.List;
import java.util.Map;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class ChangeArrivalDeadlineDateDialogTest {

    @After
    public void tearDown() {
        PrimeFaces.setCurrent(null);
    }

    @Test
    public void showDialogUsesDeadlineDialogContract() {
        PrimeFaces.setCurrent(new PrimeFaces() {
            @Override
            public Dialog dialog() {
                return new Dialog() {
                    @Override
                    public void openDynamic(String path, Map<String, Object> options,
                                             Map<String, List<String>> params) {
                        assertEquals("/admin/dialogs/changeArrivalDeadlineDate.xhtml", path);
                        assertEquals(Boolean.TRUE, options.get("modal"));
                        assertEquals(Boolean.TRUE, options.get("draggable"));
                        assertEquals(Boolean.FALSE, options.get("resizable"));
                        assertEquals(410, options.get("contentWidth"));
                        assertEquals(280, options.get("contentHeight"));
                        assertEquals(1, params.get("trackingId").size());
                        assertEquals("DEF789", params.get("trackingId").get(0));
                    }
                };
            }
        });

        new ChangeArrivalDeadlineDateDialog().showDialog("DEF789");
    }

    @Test
    public void cancelClosesWithEmptyResult() {
        PrimeFaces.setCurrent(new PrimeFaces() {
            @Override
            public Dialog dialog() {
                return new Dialog() {
                    @Override
                    public void closeDynamic(Object data) {
                        assertTrue(data instanceof String);
                        assertEquals("", data);
                    }
                };
            }
        });

        new ChangeArrivalDeadlineDateDialog().cancel();
    }
}
