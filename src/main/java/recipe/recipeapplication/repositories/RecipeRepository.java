package recipe.recipeapplication.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import recipe.recipeapplication.models.Recipe;

public interface RecipeRepository extends JpaRepository<Recipe, Long> {
    Recipe findById(int id);
}
