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
 * @author work
 */
public class User {
    
//    Attributen
    private long id;
    private String name;
    private String email;
    private String password;
    private LocalDateTime lastLogin;
    private String registerValidateCode;
    private Company company;
    private ArrayList<Artist> artists;

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public LocalDateTime getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(LocalDateTime lastLogin) {
        this.lastLogin = lastLogin;
    }

    public String getRegisterValidateCode() {
        return registerValidateCode;
    }

    public void setRegisterValidateCode(String registerValidateCode) {
        this.registerValidateCode = registerValidateCode;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public ArrayList<Artist> getArtists() {
        return artists;
    }

    public void setArtists(ArrayList<Artist> artists) {
        this.artists = artists;
    }
    

    
//    Constructors
    public User() {
    }

    public User(long id, String name, String email, String password, LocalDateTime lastLogin, String registerValidateCode, Company company, ArrayList<Artist> artists) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.lastLogin = lastLogin;
        this.registerValidateCode = registerValidateCode;
        this.company = company;
        this.artists = artists;
    }

    
}
