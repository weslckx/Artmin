package artmin.controller;

import java.util.List;
import java.util.Locale;
 
import javax.validation.Valid;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
import artmin.model.User;
import artmin.service.UserService;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;

@Controller
//@RequestMapping("/") wegdoen?
public class AppController {
//    
//    @Autowired
//    UserService userService;
//     
//    @Autowired
//    MessageSource messageSource;

    @RequestMapping(value={"/"})
    public String index(Model model){
        
        SecurityContext context = SecurityContextHolder.getContext();
        model.addAttribute("message","You are logged in as " +
                context.getAuthentication().getName());
        
        return "index";
    }
    
//    
//    /*
//     * This method will list all existing users.
//     */
//    @RequestMapping(value = {"/list" }, method = RequestMethod.GET)
//    public String listUsers(ModelMap model) {
// 
//        List<User> users = userService.findAllUsers();
//        model.addAttribute("users", users);
//        return "allusers";
//    }
// 
//    /*
//     * This method will provide the medium to add a new user.
//     */
//    @RequestMapping(value = { "/new" }, method = RequestMethod.GET)
//    public String newUser(ModelMap model) {
//        User user = new User();
//        model.addAttribute("user", user);
//        model.addAttribute("edit", false);
//        return "registration";
//    }
// 
//    /*
//     * This method will be called on form submission, handling POST request for
//     * saving employee in database. It also validates the user input
//     */
//    @RequestMapping(value = { "/new" }, method = RequestMethod.POST)
//    public String saveUser(@Valid User user, BindingResult result,
//            ModelMap model) {
// 
//        if (result.hasErrors()) {
//            return "registration";
//        }
// 
//        /*
//         * Preferred way to achieve uniqueness of field [ssn] should be implementing custom @Unique annotation 
//         * and applying it on field [ssn] of Model class [Employee].
//         * 
//         * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
//         * framework as well while still using internationalized messages.
//         * 
//         */
//        if(!userService.arePasswordsEqual(user.getPassword(), user.getConfirmPassword())){           
//            FieldError confirmPasswordError =new FieldError("user","confirmPassword",messageSource.getMessage ("non.matching.passwords", new String[]{user.getConfirmPassword()}, Locale.getDefault()));
//            result.addError(confirmPasswordError);
//            return "registration";
//        }
//         
//        userService.saveUser(user);
// 
//        model.addAttribute("success", "User " + user.getUsername()+ " registered successfully");
//        return "success";
//    }
// 
// 
//    /*
//     * This method will provide the medium to update an existing user.
//     */
//    @RequestMapping(value = { "/edit-{id}-user" }, method = RequestMethod.GET)
//    public String editUser(@PathVariable int id, ModelMap model) {
//        User user = userService.findById(id);
//        model.addAttribute("user", user);
//        model.addAttribute("edit", true);
//        return "registration";
//    }
//     
//    /*
//     * This method will be called on form submission, handling POST request for
//     * updating user in database. It also validates the user input
//     */
//    @RequestMapping(value = { "/edit-{id}-user" }, method = RequestMethod.POST)
//    public String updateEmployee(@Valid User user, BindingResult result,
//            ModelMap model, @PathVariable int id) {
// 
//        if (result.hasErrors()) {
//            return "registration";
//        }
// 
//        if(!userService.arePasswordsEqual(user.getPassword(), user.getConfirmPassword())){           
//            FieldError confirmPasswordError =new FieldError("user","confirmPassword",messageSource.getMessage ("non.matching.passwords", new String[]{user.getConfirmPassword()}, Locale.getDefault()));
//            result.addError(confirmPasswordError);
//            return "registration";
//        }
// 
//        userService.updateUser(user);
// 
//        model.addAttribute("success", "User " + user.getUsername()+ " updated successfully");
//        return "success";
//    }
// 
//     
//    /*
//     * This method will delete an employee by it's SSN value.
//     */
//    @RequestMapping(value = { "/delete-{id}-user" }, method = RequestMethod.GET)
//    public String deleteUser(@PathVariable int id) {
//        userService.deleteUserById(id);
//        return "redirect:/list";
//    }    
}
