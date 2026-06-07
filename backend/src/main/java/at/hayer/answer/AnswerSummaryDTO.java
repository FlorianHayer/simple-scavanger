package at.hayer.answer;

public record AnswerSummaryDTO(Long id, String text, boolean correct) {
    public static AnswerSummaryDTO fromEntity(Answer answer) {
        return new AnswerSummaryDTO(answer.id, answer.text, answer.correct);
    }
}
