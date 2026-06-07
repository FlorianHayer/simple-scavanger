//
//  QuestionListView.swift
//  frontend
//
//  Created by Florian Hayer on 03.06.26.
//

import SwiftUI

struct QuestionListView: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        List(viewModel.questions) { question in
            Text(question.text)
        
        }.task {
            viewModel.getAllQuestions()
        }
    }
}

#Preview {
    let model = Model()
    let viewModel = ViewModel(model: model)
    QuestionListView(viewModel: viewModel)
}
