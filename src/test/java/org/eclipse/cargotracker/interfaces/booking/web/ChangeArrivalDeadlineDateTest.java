package org.eclipse.cargotracker.interfaces.booking.web;

import org.eclipse.cargotracker.interfaces.booking.facade.BookingServiceFacade;
import org.eclipse.cargotracker.interfaces.booking.facade.dto.CargoRoute;
import org.eclipse.cargotracker.interfaces.booking.facade.dto.Location;
import org.eclipse.cargotracker.interfaces.booking.facade.dto.RouteCandidate;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.primefaces.PrimeFaces;

import java.lang.reflect.Field;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertSame;

public class ChangeArrivalDeadlineDateTest {

    private RecordingFacade facade;
    private ChangeArrivalDeadlineDate bean;

    @Before
    public void setUp() throws Exception {
        facade = new RecordingFacade();
        bean = new ChangeArrivalDeadlineDate();
        Field facadeField = ChangeArrivalDeadlineDate.class
                .getDeclaredField("bookingServiceFacade");
        facadeField.setAccessible(true);
        facadeField.set(bean, facade);
        bean.setTrackingId("ABC");
    }

    @After
    public void tearDown() {
        PrimeFaces.setCurrent(null);
    }

    @Test
    public void loadParsesDateAndUsesTrackingId() {
        bean.load();

        assertEquals("ABC", facade.loadedTrackingId);
        assertEquals("04/03/2026", new java.text.SimpleDateFormat("MM/dd/yyyy")
                .format(bean.getArrivalDeadlineDate()));
    }

    @Test
    public void malformedDateIsSurfaced() {
        facade.cargo = new CargoRoute("ABC", "HAM", "NYC", new Date(),
                false, false, "HAM", "IN_PORT") {
            @Override
            public String getArrivalDeadlineDate() {
                return "not-a-date";
            }
        };

        bean.load();

        assertNull(bean.getArrivalDeadlineDate());
    }

    @Test
    public void changeDelegatesSelectedDateAndClosesAfterSuccess() {
        Date selectedDate = new Date();
        bean.setArrivalDeadlineDate(selectedDate);
        PrimeFaces.setCurrent(new PrimeFaces() {
            @Override
            public Dialog dialog() {
                return new Dialog() {
                    @Override
                    public void closeDynamic(Object data) {
                        assertEquals("DONE", data);
                    }
                };
            }
        });

        bean.changeArrivalDeadline();

        assertEquals("ABC", facade.changedTrackingId);
        assertSame(selectedDate, facade.changedDate);
    }

    @Test
    public void nullDateIsRejectedWithoutFacadeCall() {
        bean.changeArrivalDeadline();

        assertEquals(0, facade.changeDeadlineCalls);
    }

    private static class RecordingFacade implements BookingServiceFacade {
        private String loadedTrackingId;
        private CargoRoute cargo;
        private int changeDeadlineCalls;
        private String changedTrackingId;
        private Date changedDate;

        private RecordingFacade() throws java.text.ParseException {
            cargo = new CargoRoute("ABC", "HAM", "NYC",
                    new java.text.SimpleDateFormat("MM/dd/yyyy").parse("04/03/2026"),
                    false, false, "HAM", "IN_PORT");
        }

        @Override
        public CargoRoute loadCargoForRouting(String trackingId) {
            loadedTrackingId = trackingId;
            return cargo;
        }

        @Override
        public void changeDeadline(String trackingId, Date arrivalDeadline) {
            changeDeadlineCalls++;
            changedTrackingId = trackingId;
            changedDate = arrivalDeadline;
        }

        @Override
        public String bookNewCargo(String origin, String destination, Date arrivalDeadline) {
            throw new AssertionError("Unexpected facade call");
        }

        @Override
        public void assignCargoToRoute(String trackingId, RouteCandidate route) {
            throw new AssertionError("Unexpected facade call");
        }

        @Override
        public void changeDestination(String trackingId, String destinationUnLocode) {
            throw new AssertionError("Unexpected facade call");
        }

        @Override
        public List<RouteCandidate> requestPossibleRoutesForCargo(String trackingId) {
            throw new AssertionError("Unexpected facade call");
        }

        @Override
        public List<Location> listShippingLocations() {
            return Collections.emptyList();
        }

        @Override
        public List<CargoRoute> listAllCargos() {
            return Collections.emptyList();
        }
    }
}
