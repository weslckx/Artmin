// Bram Sommen
// Created: 21/12/2019
package artmin.controller;

import artmin.model.Artist;
import artmin.model.Event;
import artmin.model.EventType;
import artmin.service.ArtistService;
import artmin.service.EventService;
import artmin.service.EventTypeService;
import java.util.Date;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Locale;

import javax.validation.Valid;

import org.springframework.context.MessageSource;
import org.springframework.validation.BindingResult;

@Controller
@RequestMapping("/events")

public class EventController {

    @Autowired
    EventService eventService; // patch service to autowired

    @Autowired
    ArtistService artistService; // patch service to autowired

    @Autowired
    EventTypeService eventTypeService; // patch service to autowired

    // EVENT OVERVIEW
    // EVENT OVERVIEW
    // EVENT OVERVIEW
    @RequestMapping(value = {"/opn-events-{artistID}"}, method = RequestMethod.GET)
    public String listArtist(@PathVariable Long artistID, ModelMap model) {

        // Haal alle events met filter: artist ID 
        List<Event> lstEvents = eventService.findAllEvents(artistID); // ophalen gegevens uit database
        model.addAttribute("events", lstEvents); //Attribute aan "pagina" model toevoegen naam: users, data= List<Users> met naam lstUsers

        // Artist Info Meenemen in venster
        Artist artist = artistService.findById(artistID);
        model.addAttribute("hotartist", artist);

        return "eventsall"; // JSP Pagina pointer
    }

    // NEW EVENT
    // NEW EVENT
    // NEW EVENT
    @RequestMapping(value = {"/new-{artistID}"}, method = RequestMethod.GET)
    public String newArtist(@PathVariable Long artistID, ModelMap model) {

        // New Events Instance
        Event event = new Event();
        model.addAttribute("event", event);

        // Artist Info Meenemen in venster
        Artist artist = artistService.findById(artistID);
        model.addAttribute("hotartist", artist);
        
        // List Of Event Types
        List<EventType> lstEventTypes = eventTypeService.findAllEventTypes();
        model.addAttribute("eventtypes", lstEventTypes); //Attribute aan "pagina" model toevoegen

        // Edit attribute
        model.addAttribute("edit", false);
        return "eventsnew"; //view r-team
    }

    @RequestMapping(value = {"/new-{artistID}"}, method = RequestMethod.POST)
    public String saveArtist(Event event, BindingResult result, ModelMap model) {

        // Ophalen van Event object
        event.setEventType(eventTypeService.findById(event.getEventTypeID()));

        // Ophalen van artiest object
        event.setArtist(artistService.findById(event.getArtistID()));

      //  event.setClientID(Long.valueOf(2));

        //Save user to DB
        eventService.saveEvent(event);

        //Redirect user to success page
        model.addAttribute("success", "Artist " + event.getName() + " registered successfully");

        // Return terug naar het overzicht van events
        return this.listArtist(event.getArtistID(), model);
    }

    //DELETE - EVENT
    //DELETE - EVENT
    //DELETE - EVENT
    @RequestMapping(value = {"/delete-{id}-event-{artistID}"}, method = RequestMethod.GET)

    public String deleteEvent(@PathVariable Long id, @PathVariable Long artistID, ModelMap model) {
        eventService.deleteEventById(id);

        // Return terug naar het overzicht van events
        return this.listArtist(artistID, model);
    }

}
