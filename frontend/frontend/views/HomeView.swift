import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: ViewModel
    @State var scanResult = "No QR code detected"
    
    var body: some View {
        Group {
            if let question = viewModel.randomQuestion {
                QuestionLocationBox(location: question.location)
                
                Spacer()
                
                ZStack(alignment: .bottom) {
                    QRScanner()
                    
                    Text(scanResult)
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .padding(.bottom)
                }
                
                
                Spacer()
            } else {
                ProgressView()
            }
        }
        .task {
            await viewModel.fetchRandomQuestion()
        }
    }
}

#Preview {
    let model = Model()
    let viewModel = ViewModel(model: model)
    HomeView(viewModel: viewModel)
}
