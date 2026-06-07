import SwiftUI

fileprivate let model = Model()

@main
struct frontendApp: App {
    @StateObject var viewModel = ViewModel(model: model)
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel).environmentObject(viewModel)
        }
    }
}
