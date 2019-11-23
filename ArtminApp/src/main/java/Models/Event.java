/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.time.LocalDateTime;
import java.util.ArrayList;

/**
 *
 * @author Rei
 */
public class Event {

//    Attributen
    private long id;
    private String name;
    private Artist artist;
    private ArrayList<Note> notes;
    private ArrayList<ToDo> toDos;
    private boolean toDoAck;
    private LocalDateTime dateCalendar;
    private LocalDateTime dateActStart;
    private LocalDateTime dateActEnd;
    private boolean dateAck;
    private boolean confirmedAck;
    private EventLocation location;
    private boolean locationAck;
    private Client client;
    private boolean clientAck;
    private int crowdQty;
    private int crowdAvgAge;
    private String crowdInformation;
    private boolean crowdAck;
    private ArrayList<Payment> payments;

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

    public Artist getArtist() {
        return artist;
    }

    public void setArtist(Artist artist) {
        this.artist = artist;
    }

    public ArrayList<Note> getNotes() {
        return notes;
    }

    public void setNotes(ArrayList<Note> notes) {
        this.notes = notes;
    }

    public ArrayList<ToDo> getToDos() {
        return toDos;
    }

    public void setToDos(ArrayList<ToDo> toDos) {
        this.toDos = toDos;
    }

    public boolean isToDoAck() {
        return toDoAck;
    }

    public void setToDoAck(boolean toDoAck) {
        this.toDoAck = toDoAck;
    }

    public LocalDateTime getDateCalendar() {
        return dateCalendar;
    }

    public void setDateCalendar(LocalDateTime dateCalendar) {
        this.dateCalendar = dateCalendar;
    }

    public LocalDateTime getDateActStart() {
        return dateActStart;
    }

    public void setDateActStart(LocalDateTime dateActStart) {
        this.dateActStart = dateActStart;
    }

    public LocalDateTime getDateActEnd() {
        return dateActEnd;
    }

    public void setDateActEnd(LocalDateTime dateActEnd) {
        this.dateActEnd = dateActEnd;
    }

    public boolean isDateAck() {
        return dateAck;
    }

    public void setDateAck(boolean dateAck) {
        this.dateAck = dateAck;
    }

    public boolean isConfirmedAck() {
        return confirmedAck;
    }

    public void setConfirmedAck(boolean confirmedAck) {
        this.confirmedAck = confirmedAck;
    }

    public EventLocation getLocation() {
        return location;
    }

    public void setLocation(EventLocation location) {
        this.location = location;
    }

    public boolean isLocationAck() {
        return locationAck;
    }

    public void setLocationAck(boolean locationAck) {
        this.locationAck = locationAck;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public boolean isClientAck() {
        return clientAck;
    }

    public void setClientAck(boolean clientAck) {
        this.clientAck = clientAck;
    }

    public int getCrowdQty() {
        return crowdQty;
    }

    public void setCrowdQty(int crowdQty) {
        this.crowdQty = crowdQty;
    }

    public int getCrowdAvgAge() {
        return crowdAvgAge;
    }

    public void setCrowdAvgAge(int crowdAvgAge) {
        this.crowdAvgAge = crowdAvgAge;
    }

    public String getCrowdInformation() {
        return crowdInformation;
    }

    public void setCrowdInformation(String crowdInformation) {
        this.crowdInformation = crowdInformation;
    }

    public boolean isCrowdAck() {
        return crowdAck;
    }

    public void setCrowdAck(boolean crowdAck) {
        this.crowdAck = crowdAck;
    }

    public ArrayList<Payment> getPayments() {
        return payments;
    }

//    Properties
    public void setPayments(ArrayList<Payment> payments) {
        this.payments = payments;
    }

//    Constructors
    public Event() {
    }

    public Event(long id, String name, Artist artist, ArrayList<Note> notes, ArrayList<ToDo> toDos, boolean toDoAck, LocalDateTime dateCalendar, LocalDateTime dateActStart, LocalDateTime dateActEnd, boolean dateAck, boolean confirmedAck, EventLocation location, boolean locationAck, Client client, boolean clientAck, int crowdQty, int crowdAvgAge, String crowdInformation, boolean crowdAck, ArrayList<Payment> payments) {
        this.id = id;
        this.name = name;
        this.artist = artist;
        this.notes = notes;
        this.toDos = toDos;
        this.toDoAck = toDoAck;
        this.dateCalendar = dateCalendar;
        this.dateActStart = dateActStart;
        this.dateActEnd = dateActEnd;
        this.dateAck = dateAck;
        this.confirmedAck = confirmedAck;
        this.location = location;
        this.locationAck = locationAck;
        this.client = client;
        this.clientAck = clientAck;
        this.crowdQty = crowdQty;
        this.crowdAvgAge = crowdAvgAge;
        this.crowdInformation = crowdInformation;
        this.crowdAck = crowdAck;
        this.payments = payments;
    }

    
}
