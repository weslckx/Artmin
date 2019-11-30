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
public class ToDo {
//    Attributen
    private long id;
    private int sortNumber;
    private String name;
    private String description;
    private String attachmentFilePath;
    private boolean ack;
    
//    Properties

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getSortNumber() {
        return sortNumber;
    }

    public void setSortNumber(int sortNumber) {
        this.sortNumber = sortNumber;
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

    public String getAttachmentFilePath() {
        return attachmentFilePath;
    }

    public void setAttachmentFilePath(String attachmentFilePath) {
        this.attachmentFilePath = attachmentFilePath;
    }

    public boolean isAck() {
        return ack;
    }

    public void setAck(boolean ack) {
        this.ack = ack;
    }
    
//    Constructors

    public ToDo() {
    }

    public ToDo(long id, int sortNumber, String name, String description, String attachmentFilePath, boolean ack) {
        this.id = id;
        this.sortNumber = sortNumber;
        this.name = name;
        this.description = description;
        this.attachmentFilePath = attachmentFilePath;
        this.ack = ack;
    }
    
    
}
