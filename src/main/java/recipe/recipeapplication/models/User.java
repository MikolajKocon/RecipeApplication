package recipe.recipeapplication.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank
    @Column(name = "First_name")
    private String firstName;

    @NotBlank
    @Column(name = "Last_name")
    private String lastName;

    @Email
    @Column(name = "Email")
    private String email;

    @Column(name = "Password", unique = true)
    private String password;

    @NotBlank
    private String type = "user";

    public String getFullName() {
        return id + " : " + firstName + " " + lastName;
    }

}