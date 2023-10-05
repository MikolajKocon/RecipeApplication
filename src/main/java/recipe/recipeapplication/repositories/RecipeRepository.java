package recipe.recipeapplication.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import recipe.recipeapplication.models.Recipe;

import java.util.List;

public interface RecipeRepository extends JpaRepository<Recipe, Long> {
    List<Recipe> findAll(Recipe recipe);
    Recipe findById(int id);
}
