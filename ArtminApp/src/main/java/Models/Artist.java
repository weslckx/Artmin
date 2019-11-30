/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.ArrayList;

/**
 *
 * @author Rei
 */
public class Artist {

//Attributen
    private long id;
    private String name;
    private String description;
    private String logoUrl;
    private ArrayList<User> users;
    private ArrayList<Event> events;
    private ArrayList<EventType> eventTypes;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLogoUrl() {
        return logoUrl;
    }

    public void setLogoUrl(String logoUrl) {
        this.logoUrl = logoUrl;
    }

    public ArrayList<User> getUsers() {
        return users;
    }

    public void setUsers(ArrayList<User> users) {
        this.users = users;
    }

    public ArrayList<Event> getEvents() {
        return events;
    }

    public void setEvents(ArrayList<Event> events) {
        this.events = events;
    }

    public ArrayList<EventType> getEventTypes() {
        return eventTypes;
    }

//Properties
    public void setEventTypes(ArrayList<EventType> eventTypes) {
        this.eventTypes = eventTypes;
    }

//Contructors
    public Artist() {
    }

    public Artist(long id, String name, String description, String logoUrl, ArrayList<User> users, ArrayList<Event> events, ArrayList<EventType> eventTypes) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.logoUrl = logoUrl;
        this.users = users;
        this.events = events;
        this.eventTypes = eventTypes;
    }

}
