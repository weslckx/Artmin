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
     
//    // zoeken van gebruiker op basis van ID
//    public DemoArtist findById(int id) {
//        return dao.findById(id);
//    }
// 
//    // Bewaren van gebruiker
//    public void saveArtist(DemoArtist artist) {
//        dao.saveArtist(artist);
//    }
// 
//    // bijwerken van bestaande gebruiker
//    public void updateArtist(DemoArtist artist) {
//        DemoArtist entity = dao.findById(artist.getId());
//        if(entity!=null){
//            entity.setArtistname(artist.getArtistname());
//            entity.setPassword(artist.getPassword());
//            entity.setConfirmPassword(artist.getConfirmPassword());
//        }
//    }
// 
//    // verwijderen van gebruiker
//    public void deleteArtistById(int id) {
//        dao.deleteArtistById(id);
//    }
     
    // zoeken van alle gebruikers
    public List<Artist> findAllArtists() {
        return dao.findAllArtists();
    }
// 
// // controleer of paswoord gelijk is
//    public boolean arePasswordsEqual(String password, String confirmPassword) {
//        return (password.equals(confirmPassword));
//    }
}
