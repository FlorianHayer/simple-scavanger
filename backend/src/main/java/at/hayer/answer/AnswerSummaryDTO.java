package at.hayer.answer;

public record AnswerSummaryDTO(String text, boolean correct) {
    public static AnswerSummaryDTO fromEntity(Answer answer) {
        return new AnswerSummaryDTO(answer.text, answer.correct);
    }
}
