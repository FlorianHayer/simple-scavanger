package at.hayer.question;

import at.hayer.answer.Answer;
import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

import java.util.List;

@Entity
@Table(name="SCAV_QUESTION")
public class Question extends PanacheEntity {
    public String text;

    public String location;

    @OneToMany(mappedBy="question")
    public List<Answer> answers;
}
