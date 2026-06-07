struct AnswerSummary: Codable, Identifiable {
    var id: Int
    var text: String
    var correct: Bool
}

struct QuestionSummary: Codable, Identifiable {
    var id: Int
    var text: String
    var location: String
    var answers: [AnswerSummary]
}

struct Model {
    static let shared = Model()
    var questions: [QuestionSummary] = []
}
