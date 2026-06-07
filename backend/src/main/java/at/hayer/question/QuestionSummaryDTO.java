package at.hayer.question;

import at.hayer.answer.AnswerSummaryDTO;

import java.util.List;

public record QuestionSummaryDTO(Long id, String text, String location, List<AnswerSummaryDTO> answers) {
    public static QuestionSummaryDTO fromEntity(Question question) {
        return new QuestionSummaryDTO(question.id, question.text, question.location, question.answers
                .stream()
                .map(AnswerSummaryDTO::fromEntity)
                .toList());
    }
}
