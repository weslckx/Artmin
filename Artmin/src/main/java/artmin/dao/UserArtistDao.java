package artmin.dao;

import artmin.model.UserArtist;
import java.sql.ResultSet;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

//@Repository("UserArtistDao")
public class UserArtistDao extends AbstractDao {
        
    public void saveUserArtist(UserArtist userArtist) {
        persist(userArtist);
    }
    
    public void deleteUserArtistByUserIdAndArtistId(long userId, long artistId) {
        Query query = getSession().createSQLQuery("DELETE FROM UsersArtist WHERE userID = :uid AND artistID = :aid");
        query.setLong("uid", userId);
        query.setLong("aid", artistId);
        query.executeUpdate();
    }
    
    public void deleteUserArtistByArtistId (long artistId){
        Query query = getSession().createSQLQuery("DELETE FROM UsersArtist WHERE artistID = :id");
        query.setLong("id", artistId);
        query.executeUpdate();
    }
    
    public void deleteUserArtistByUserId (long userId){
        Query query = getSession().createSQLQuery("DELETE FROM UsersArtist WHERE userID = :id");
        query.setLong("id", userId);
        query.executeUpdate();
    }
    
    @SuppressWarnings("unchecked")
    public List<UserArtist> findAllUserArtists() {
        Criteria criteria = createEntityCriteria();
        return (List<UserArtist>) criteria.list();
    }
    
    /*
    Indien een gebruiker eigenaar is van een artiest, moeten de artiesten eveneens verwijderd worden.
    */
    @SuppressWarnings("unchecked")
    public List<UserArtist> findAllUserArtistsByUserdIdAndRole(long userId, long role){
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("userID", userId));
        criteria.add(Restrictions.eq("role", role));
        return (List<UserArtist>) criteria.list();
    }
    
}
