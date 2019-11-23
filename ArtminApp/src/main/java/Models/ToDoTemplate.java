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
public class ToDoTemplate {
// Attributen
    private long id;
    private int sortNumber;
    private String name;
    
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


    
//    Constructors

    public ToDoTemplate() {
    }

    public ToDoTemplate(long id, int sortNumber, String name) {
        this.id = id;
        this.sortNumber = sortNumber;
        this.name = name;
    }

    
}
