package sbr.example.restful.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import sbr.example.restful.model.Question;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Long>{
    
}
