import SwiftUI

class ChildViewModel : ObservableObject {
    @Published var count: Int = 0
}

struct ChildView : View {
    ObservedObject var viewModel = ChildViewModel()
    
    var body: some View {
        Text("child Count: \(viewModel.count)")
            .font(.title)
        Button("add child count") {
            viewModel.count += 1
        }
    }
}


struct ObservedView: View {
    @State var count : Int = 0
    
    var body: some View {
        VStack {
            Text("parent Count: \(count)")
                .font(.title)
            Button("add parent Count"){
                count += 1
            }
            
            ChildView()
        }
        .padding()
    }
}

#Preview {
    ObservedView()
}
