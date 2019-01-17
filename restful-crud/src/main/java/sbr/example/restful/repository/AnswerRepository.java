package sbr.example.restful.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import sbr.example.restful.model.Answer;

@Repository
public interface AnswerRepository extends JpaRepository<Answer, Long>{
    List<Answer> findByQuestionId(Long questionId);
}
