import SwiftUI

class ParrentViewModel : ObservableObject {
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

class ChildViewModel : ObservableObject {
    @Published var count: Int = 0
}

struct ChildView : View {
    @ObservedObject var viewModel = ChildViewModel()
    
    var body: some View {
        Text("child Count: \(viewModel.count)")
            .font(.title)
        Button("add child count") {
            viewModel.count += 1
        }
    }
}

struct ContentView: View {
    @State var count : Int = 0
    
    var body: some View {
        VStack {
            Text("Count: \(count)")
                .font(.title)
            Button("add Count"){
                count += 1
            }
            
            ParrentView()
            ChildView()
        }
        .padding()
    }

}

#Preview {
    ContentView()
}

// ObservedObject는 뷰 구조체와 생명주기 같고, StateObject는 뷰와 생명주기가 같다.
