package artmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import artmin.dao.AppUserDao;
import artmin.model.AppUser;

@Service("appUserService")
@Transactional
public class AppUserService {
    @Autowired
    private AppUserDao dao;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public AppUser findById(long id) {
        return dao.findById(id);
    }

    public AppUser findBySSO(String sso) {
        AppUser user = dao.findBySSO(sso);
        return user;
    }

    public void saveUser(AppUser user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        dao.save(user);
    }

    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends.
     */
    public void updateUser(AppUser user) {
        AppUser entity = dao.findById(user.getId());
        if(entity!=null){
            entity.setSsoId(user.getSsoId());
            if(!user.getPassword().equals(entity.getPassword())){
                entity.setPassword(passwordEncoder.encode(user.getPassword()));
            }
            entity.setFirstName(user.getFirstName());
            entity.setLastName(user.getLastName());
            entity.setEmail(user.getEmail());
            entity.setUserProfiles(user.getUserProfiles());
        }
    }

    public void deleteUserBySSO(String sso) {
        dao.deleteBySSO(sso);
    }

    public List<AppUser> findAllUsers() {
        return dao.findAllUsers();
    }

    public boolean isUserSSOUnique(Long id, String sso) {
        AppUser user = findBySSO(sso);
        return ( user == null || ((id != null) && (user.getId() == id)));
    }
}
