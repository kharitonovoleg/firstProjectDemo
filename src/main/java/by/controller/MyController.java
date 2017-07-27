package by.controller;

import by.model.User;
import by.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {

    @Autowired
    private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = {"/", "index"}, method = RequestMethod.GET)
    public ModelAndView main(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("list", userService.listUser());
        return new ModelAndView("index");
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(User user) {
        userService.addUser(user);
        return "redirect:/index";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id) {
        userService.deleteUser(id);
        return "redirect:/index";
    }

    @RequestMapping(value = "/findbyid/{id}")
    public ModelAndView findUserById(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", userService.findUserById(id));
        return new ModelAndView("edit");
    }

    @RequestMapping(value = "/edit")
    public String update(@ModelAttribute("user") User user) {
        userService.updateUser(user);
        return "redirect:/index";
    }

}
