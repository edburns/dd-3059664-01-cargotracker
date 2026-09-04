package org.eclipse.cargotracker.interfaces.booking.facade.internal;

import org.eclipse.cargotracker.application.BookingService;
import org.eclipse.cargotracker.domain.model.cargo.Itinerary;
import org.eclipse.cargotracker.domain.model.cargo.TrackingId;
import org.eclipse.cargotracker.domain.model.location.UnLocode;

import org.junit.Test;

import java.lang.reflect.Field;
import java.util.Date;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertSame;

public class DefaultBookingServiceFacadeTest {

    @Test
    public void changeDeadlineDelegatesTrackingIdAndDateOnce() throws Exception {
        RecordingBookingService bookingService = new RecordingBookingService();
        DefaultBookingServiceFacade facade = new DefaultBookingServiceFacade();
        Field bookingServiceField = DefaultBookingServiceFacade.class
                .getDeclaredField("bookingService");
        bookingServiceField.setAccessible(true);
        bookingServiceField.set(facade, bookingService);

        Date deadline = new Date();
        facade.changeDeadline("ABC", deadline);

        assertEquals(1, bookingService.changeDeadlineCalls);
        assertEquals(new TrackingId("ABC"), bookingService.trackingId);
        assertSame(deadline, bookingService.deadline);
    }

    private static class RecordingBookingService implements BookingService {

        private int changeDeadlineCalls;
        private TrackingId trackingId;
        private Date deadline;

        @Override
        public TrackingId bookNewCargo(UnLocode origin, UnLocode destination,
                                       Date arrivalDeadline) {
            throw new AssertionError("Unexpected bookNewCargo call");
        }

        @Override
        public List<Itinerary> requestPossibleRoutesForCargo(
                TrackingId trackingId) {
            throw new AssertionError(
                    "Unexpected requestPossibleRoutesForCargo call");
        }

        @Override
        public void assignCargoToRoute(Itinerary itinerary,
                                       TrackingId trackingId) {
            throw new AssertionError("Unexpected assignCargoToRoute call");
        }

        @Override
        public void changeDestination(TrackingId trackingId,
                                      UnLocode unLocode) {
            throw new AssertionError("Unexpected changeDestination call");
        }

        @Override
        public void changeDeadline(TrackingId trackingId, Date deadline) {
            changeDeadlineCalls++;
            this.trackingId = trackingId;
            this.deadline = deadline;
        }
    }
}
