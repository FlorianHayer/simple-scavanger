package at.hayer.answer;

import at.hayer.question.Question;
import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="SCAV_ANSWER")
public class Answer extends PanacheEntity {
    public String text;

    public boolean correct;

    @ManyToOne
    @JoinColumn(name="question_id")
    public Question question;
}
