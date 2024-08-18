import SwiftUI

class ParrentView : ObservableObject {
    @Published var count: Int = 0
}

struct ParrentView : View {
    @StateObject var viewModel = ParrentViewModel()
    
    var body: some View {
        Text("parrent Count: \(viewModel.count)")
            .font(.title)
        Button("add parrent count") {
            viewModel.count += 1
        }
    }
}

struct StateView: View {
    @State var count : Int = 0
    
    var body: some View {
        VStack {
            Text("child Count: \(count)")
                .font(.title)
            Button("add child Count"){
                count += 1
            }
            
            ParrentView()
        }
        .padding()
    }
}

#Preview {
    StateView()
}
