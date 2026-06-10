import Foundation
internal import Combine



class ViewModel: ObservableObject {
    @Published var model: Model
    
    init(model: Model) {
        self.model = model
    }
    
    var questions: [QuestionSummary] {
        get {
            model.questions
        }
        set {
            model.questions = newValue
        }
    }
    
    @Published
    var randomQuestion: QuestionSummary?
    
    private var baseUrl = "http://localhost:8080/api/"
    
    func fetchAllQuestionSummaries() {
        let url = baseUrl + "questions/summaries/0"
        
        guard let url = URL(string: url) else {
            print("Invalid URL for fetching all Questions")
            return
        }
        
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                let decoder = JSONDecoder()
                let questions = try? decoder.decode([QuestionSummary].self, from: data)
                
                DispatchQueue.main.async {
                    self.questions = questions ?? []
                    print(self.questions)
                }
            }
        }.resume()
    }
    
    

    func fetchRandomQuestion() async {
        let url = baseUrl + "questions/summaries/random"
        guard let url = URL(string: url) else { return }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let question = try JSONDecoder().decode(QuestionSummary.self, from: data)
            self.randomQuestion = question
        } catch {
            print("Failed: \(error)")
        }
    }
    
    
    
}
