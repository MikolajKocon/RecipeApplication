package recipe.recipeapplication.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;
import recipe.recipeapplication.models.User;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    @Transactional
    @Modifying
    @Query(value = "UPDATE users SET first_name = ?1, last_name = ?2, email = ?3 WHERE id = ?4",
            nativeQuery = true)
    void update(String firstName, String lastName, String email, Integer id);

    @Transactional
    @Modifying
    @Query(value = "UPDATE users SET password = ?1 WHERE id = ?2",
            nativeQuery = true)
    void updatePassword(String password, Integer id);

    List<User> findAllByType(String status);

    Optional<User> findByEmail(String email);
}
