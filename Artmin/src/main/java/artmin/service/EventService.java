/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package artmin.service;

import artmin.dao.EventDao;
import artmin.dao.EventTypeDao;
import artmin.model.Event;
import artmin.model.EventType;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Rei
 */
@Service("eventService")
@Transactional
public class EventService {

    @Autowired
    private EventDao dao;

    @Autowired
    private EventTypeDao eventDao;

    // zoeken van event op basis van ID
    public Event findById(Long id) {
        return dao.findById(id);
    }

    // Bewaren van event
    public void saveEvent(Event event) {
        dao.saveEvent(event);
    }

    // bijwerken van bestaande event
    public void updateEvent(Event event) {
        Event entity = dao.findById(event.getId());
        if (entity != null) {
            entity.setArtistID(event.getArtistID());
            entity.setName(event.getName());
            entity.setTodoAck(event.isTodoAck());
            entity.setDateCalendar(event.getDateCalendar());
            entity.setDateActStart(event.getDateActStart());
            entity.setDateActEnd(event.getDateActEnd());
            entity.setDateAck(event.isDateAck());
            entity.setConfirmedAck(event.isConfirmedAck());
            entity.setLocationID(event.getLocationID());
            entity.setLocationAck(event.isLocationAck());
            entity.setClientID(event.getClientID());
            entity.setClientAck(event.isClientAck());
            entity.setCrowdQty(event.getCrowdQty());
            entity.setCrowdsAvgAge(event.getCrowdsAvgAge());
            entity.setCrowdInformation(event.getCrowdInformation());
            entity.setCrowdAck(event.isCrowdAck());
        }
    }

    // verwijderen van event
    public void deleteEventById(Long id) {
        dao.deleteEventById(id);
    }

    // zoeken van alle events
    public List<Event> findAllEvents(Long artistID) {

        List<Event> evnt = new ArrayList<Event>();
        evnt.addAll(dao.findAllEvents(artistID));

        for (Event tmp : evnt) {
            FillEvent(tmp);
        }

        return evnt;
    }

    public void FillEvent(Event evt) {
        // EVENT TYPE OPHALEN
        // EVENT TYPE OPHALEN
        // EVENT TYPE OPHALEN
        EventType eventType = eventDao.findById(evt.getEventTypeID()); // Ophalen van eventType
        evt.setEventType(eventType); // Voeg Event Type toe aan lijst gegeven 

        evt.statusSwitch();

    }
}
