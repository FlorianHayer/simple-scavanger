package at.hayer.question;

import java.util.List;

public record QuestionDTO(String text, String location, List<Long> answers) {
    public static QuestionDTO fromEntity(Question question) {
        return new QuestionDTO(question.text, question.location, question.answers
                .stream()
                .mapToLong(answer -> answer.id)
                .boxed()
                .toList());
    }
}
