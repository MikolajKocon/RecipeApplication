package recipe.recipeapplication.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import recipe.recipeapplication.models.Recipe;
import recipe.recipeapplication.repositories.RecipeRepository;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private RecipeRepository recipeRepository;

    @GetMapping("/edit/{recipeId}")
    public String editRecipe(@PathVariable Integer recipeId, Model model) {
        Recipe recipe = recipeRepository.findById(recipeId);
        model.addAttribute("recipe", recipe);
        return "edit-recipe";
    }

    @GetMapping("/delete/{id}")
    public String deleteRecipe(@PathVariable Integer id) {
        return "redirect:/admin";
    }

    @GetMapping("/add-recipe")
    public String showAddRecipeForm(Model model) {
        model.addAttribute("recipe", new Recipe());
        return "add-recipe";
    }

    @PostMapping("/add-recipe")
    public String addRecipe(@ModelAttribute Recipe recipe) {
        recipeRepository.save(recipe);
        return "redirect:/recipes";
    }
}

