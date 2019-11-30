package artmin.service;

import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import artmin.dao.UserDao;
import artmin.model.User;
 
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDao dao;
     
    public User findById(int id) {
        return dao.findById(id);
    }
 
    public void saveUser(User user) {
        dao.saveUser(user);
    }
 
    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends. 
     */
    public void updateUser(User user) {
        User entity = dao.findById(user.getId());
        if(entity!=null){
            entity.setUsername(user.getUsername());
            entity.setPassword(user.getPassword());
            entity.setConfirmPassword(user.getConfirmPassword());
        }
    }
 
    public void deleteUserById(int id) {
        dao.deleteUserById(id);
    }
     
    public List<User> findAllUsers() {
        return dao.findAllUsers();
    }
 
 
    public boolean arePasswordsEqual(String password, String confirmPassword) {
        return (password.equals(confirmPassword));
    }
}
