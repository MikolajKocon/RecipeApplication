package recipe.recipeapplication.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import recipe.recipeapplication.models.User;
import recipe.recipeapplication.repositories.UserRepository;

import javax.validation.Valid;

@Controller
public class UserController {

    private final UserRepository userRepository;

    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping(path = "/registration")
    public String displayAddForm(Model model) {
        model.addAttribute("user", new User());
        return "user/add-form";
    }

    @PostMapping("/registration")
    public String processAddForm(@Valid User user, BindingResult bindingResult, @RequestParam(name = "pass") String pass) {
        if (bindingResult.hasErrors() || !user.getPassword().equals(pass)) {
            return "user/add-form";
        }
        userRepository.save(user);
        return "redirect:/user/showAll";
    }
}
