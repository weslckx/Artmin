package artmin.service;

import java.util.List;
 
import artmin.model.User;

public interface UserService {
    User findById(int id);
     
    void saveUser(User user);
     
    void updateUser(User user);
     
    void deleteUserById(int id);
 
    List<User> findAllUsers(); 
     
    boolean arePasswordsEqual(String password, String confirmPassword);
}
