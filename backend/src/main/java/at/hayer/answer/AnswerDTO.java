package at.hayer.answer;

public record AnswerDTO(String text, boolean correct, Long questionId) {
    public static AnswerDTO fromEntity(Answer answer) {
        return new AnswerDTO(answer.text, answer.correct, answer.question.id);
    }
}
