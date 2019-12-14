/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package artmin.dao;

import artmin.model.Artist;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

@Repository("artistDao")
public class ArtistDao extends AbstractDao<Long, Artist> {
    public Artist findByid(long id){
        return getByKey(id);
    }
    
    public void saveUser(Artist artist) {
        persist(artist);
    }

    public void deleteUserById(Long id) {
        Query query = getSession().createSQLQuery("delete from artist where id = :id");
        query.setLong("id", id);
        query.executeUpdate();
    }
    
    @SuppressWarnings("unchecked")
    public List<Artist> findAllArtists() {
        Criteria criteria = createEntityCriteria();
        return (List<Artist>) criteria.list();
    }
}
