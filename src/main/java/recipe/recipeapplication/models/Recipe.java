package recipe.recipeapplication.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.validation.constraints.NotBlank;
import java.time.LocalDateTime;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "recipe")
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "Name")
    @NotBlank
    private String name;

    @ManyToOne
    @JoinColumn(name = "Course_id")
    private Course course;

    @Column(name = "Description")
    @NotBlank
    private String description;

    @Column(name = "Created")
    @CreationTimestamp
    private LocalDateTime created;

    @Column(name = "Updated")
    @UpdateTimestamp
    private LocalDateTime updated;

    @Column(name = "Preparation_time")
    private Integer preparationTime;

    @Column(name = "Preparation")
    @NotBlank
    private String preparation;

    @ManyToOne
    @JoinColumn(name = "User_id")
    private User user;

}