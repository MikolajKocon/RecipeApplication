package recipe.recipeapplication.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "recipe_ingredients")
public class RecipeIngredients {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "Recipe_id")
    private Recipe recipe;

    @ManyToOne
    @JoinColumn(name = "Ingredient_id")
    private Ingredients ingredients;

    @Column(name = "Amount")
    private Integer amount;

    @Column(name = "Unit")
    private String unit;
}