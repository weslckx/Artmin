/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Rei
 */
public class EventLocation {
//    Attributen
    private long id;
    private String name;
    private String manager;
    private String street;
    private String nrBus;
    private String postCode;
    private String city;
    private String country;
    private String phone;
    private String email;
    private String vat;
    private boolean ack;
    
//    Properties

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

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getNrBus() {
        return nrBus;
    }

    public void setNrBus(String nrBus) {
        this.nrBus = nrBus;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getVat() {
        return vat;
    }

    public void setVat(String vat) {
        this.vat = vat;
    }

    public boolean isAck() {
        return ack;
    }

    public void setAck(boolean ack) {
        this.ack = ack;
    }

    
    
//    Constructors

    public EventLocation() {
    }

    public EventLocation(long id, String name, String manager, String street, String nrBus, String postCode, String city, String country, String phone, String email, String vat, boolean ack) {
        this.id = id;
        this.name = name;
        this.manager = manager;
        this.street = street;
        this.nrBus = nrBus;
        this.postCode = postCode;
        this.city = city;
        this.country = country;
        this.phone = phone;
        this.email = email;
        this.vat = vat;
        this.ack = ack;
    }

    
}
