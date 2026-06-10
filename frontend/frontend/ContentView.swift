//
//  ContentView.swift
//  frontend
//
//  Created by Florian Hayer on 03.06.26.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        HomeView(viewModel: viewModel)
    }
}

#Preview {
    let model = Model()
    let viewModel = ViewModel(model: model)
    ContentView(viewModel: viewModel)
}
