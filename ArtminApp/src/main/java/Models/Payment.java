/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.time.LocalDateTime;

/**
 *
 * @author Rei
 */
public class Payment {
//    Attributen
    private long id;
    private String name;
    private LocalDateTime modeTimeStamp;
    private String description;
    private double price;
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

    public LocalDateTime getModeTimeStamp() {
        return modeTimeStamp;
    }

    public void setModeTimeStamp(LocalDateTime modeTimeStamp) {
        this.modeTimeStamp = modeTimeStamp;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public boolean isAck() {
        return ack;
    }

    public void setAck(boolean ack) {
        this.ack = ack;
    }
    
    
//    Constructors
    public Payment() {
    }

    public Payment(long id, String name, LocalDateTime modeTimeStamp, String description, double price, boolean ack) {
        this.id = id;
        this.name = name;
        this.modeTimeStamp = modeTimeStamp;
        this.description = description;
        this.price = price;
        this.ack = ack;
    }

}
