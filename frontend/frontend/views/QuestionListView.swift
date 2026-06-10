import SwiftUI

struct QuestionListView: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        List(viewModel.questions) { question in
            VStack {
                Text(question.text).multilineTextAlignment(.leading)
            }
        
        }.task {
            viewModel.fetchAllQuestionSummaries()
        }
    }
}

#Preview {
    let model = Model()
    let viewModel = ViewModel(model: model)
    QuestionListView(viewModel: viewModel)
}
