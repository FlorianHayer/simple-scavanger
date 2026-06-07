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
    
    private var baseUrl = "http://localhost:8080/api/"
    
    func getAllQuestions() {
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

}
