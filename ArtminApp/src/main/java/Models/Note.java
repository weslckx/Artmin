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
public class Note {
    
//Attributen
    private long id;
    private User modUser;
    private LocalDateTime modeTimeStamp;
    private String note;
    
//    Properties   

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public User getModUser() {
        return modUser;
    }

    public void setModUser(User modUser) {
        this.modUser = modUser;
    }

    public LocalDateTime getModeTimeStamp() {
        return modeTimeStamp;
    }

    public void setModeTimeStamp(LocalDateTime modeTimeStamp) {
        this.modeTimeStamp = modeTimeStamp;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    
    
//Constructor

    public Note() {
    }

    public Note(long id, User modUser, LocalDateTime modeTimeStamp, String note) {
        this.id = id;
        this.modUser = modUser;
        this.modeTimeStamp = modeTimeStamp;
        this.note = note;
    }

}
