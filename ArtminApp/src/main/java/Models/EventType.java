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
public class EventType {
    
//Attributen
    private long id;
    private String name;
    private ArrayList<ToDoTemplate> toDoTemplates;

//Properties

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

    public ArrayList<ToDoTemplate> getToDoTemplates() {
        return toDoTemplates;
    }

    public void setToDoTemplates(ArrayList<ToDoTemplate> toDoTemplates) {
        this.toDoTemplates = toDoTemplates;
    }
    
    
//    Constructors
    public EventType() {
    }

    public EventType(long id, String name, ArrayList<ToDoTemplate> toDoTemplates) {
        this.id = id;
        this.name = name;
        this.toDoTemplates = toDoTemplates;
    }

    
}
