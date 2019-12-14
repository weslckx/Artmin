/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package artmin.controller;

import artmin.model.Artist;
import artmin.service.ArtistService;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author r0798566
 */
@Controller
@RequestMapping("/artist")
public class ArtistController {
    
    @Autowired
    ArtistService artistService;
    
    @RequestMapping(value = {"/new"}, method = RequestMethod.GET)
    public String newArtist(ModelMap model) {
        Artist artist = new Artist();
        model.addAttribute("artist", artist);
        model.addAttribute("edit", false);
        return ""; //view r-team
    }
    
    @RequestMapping(value = {"/new"}, method = RequestMethod.POST)
    public String newArtist(BindingResult result, ModelMap model) {
        Artist artist = new Artist();
        model.addAttribute("artist", artist);
        model.addAttribute("edit", false);
        return ""; //view r-team
    }
    
    
    @RequestMapping(value = {"", "/list"}, method = RequestMethod.GET)
    public String listArtist(ModelMap model) {
        List<Artist> lstArtists = artistService.findAllArtists(); // ophalen gegevens uit database
        model.addAttribute("artists", lstArtists); //Attribute aan "pagina" model toevoegen naam: users, data= List<Users> met naam lstUsers
        return "allartists"; // JSP Pagina pointer
    }

}