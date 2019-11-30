package artmin.dao;

import java.util.List;
 
import artmin.model.User;

public interface UserDao {
    User findById(int id);
 
    void saveUser(User user);
     
    void deleteUserById(int id);
     
    List<User> findAllUsers();
}
