package artmin.service;

import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import artmin.dao.ArtistDao;
import artmin.model.Artist;
 
@Service("artistService")
@Transactional
public class ArtistService{
    @Autowired
    private ArtistDao dao;
     
    // zoeken van gebruiker op basis van ID
    public Artist findById(int id) {
        return dao.findById(id);
    }
 
    // Bewaren van gebruiker
    public void saveArtist(Artist artist) {
        dao.saveArtist(artist);
    }
 
    // bijwerken van bestaande gebruiker
    public void updateArtist(Artist artist) {
        Artist entity = dao.findById(artist.getId());
        if(entity!=null){
            entity.setName(artist.getName());
            entity.setDescription(artist.getDescription());
            entity.setLogoUrl(artist.getLogoUrl());
        }
    }
 
    // verwijderen van gebruiker
    public void deleteArtistById(long id) {
        dao.deleteArtistById(id);
    }
     
    // zoeken van alle gebruikers
    public List<Artist> findAllArtists() {
        return dao.findAllArtists();
    }

}
