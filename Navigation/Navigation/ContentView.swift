import SwiftUI


//topic.1
//struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            List {
//                Section("멘토들") {
//                    ForEach(mentos, id: \.name) { mento in
//                        NavigationLink(value: mento) {
//                            Text(mento.name)
//                                .foregroundColor(mento.color)
//                        }
//                    }
//                }
//                Section("배우들") {
//                    ForEach(actors, id: \.name) { actor in
//                        NavigationLink(value: actor) {
//                            Text(actor.name)
//                        }
//                    }
//                }
//                
//                Section("그 외") {
//                    NavigationLink {
//                        LumiView()
//                    } label: {
//                        Text("전달할게 없다면요?")
//                    }
//                }
//            }
//            .navigationDestination(for: Mento.self) { mento in
//                MentoView(mento: mento)
//            }
//            .navigationDestination(for: Actor.self) { actor in
//                ActorView(actor: actor)
//            }
//            .navigationTitle("사람들")
//        }
//    }
//}

//topic.2

// MARK: 화면 전환을 관리하는 객체
class NavigationManager: ObservableObject {
    @Published var path = NavigationPath()
    
    // 화면 전환하기
    func navigate(to destination: String) {
        path.append(destination)
    }
    
    // 루트로 이동하기
    func poptoRoot() {
        path.removeLast(path.count)
    }
    
    // 뒤로가기
    func pop() {
        path.removeLast()
    }
    
    // 내 마음대로 커스텀, 1 - 2 - 3 - 4 순으로 이동하기
    func oneTwoThreeFour() {
        path.append("2")
        path.append("1")
        path.append("4")
        path.append("3")
    }
}

struct ContentView: View {
    //@State var path = NavigationPath()
    @StateObject private var navigationManager = NavigationManager()
    
    var body: some View {
        NavigationStack(path: $navigationManager.path) {
            VStack(spacing: 20) {
                Text("여기는 루트입니다")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 50)
                
                Button(action: {
                    //path.append("1")
                    navigationManager.navigate(to: "1")
                }) {
                    Text("1번으로 이동하기")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                
                Button(action: {
                    //path.append("2")
                    navigationManager.navigate(to: "2")
                }) {
                    Text("2번으로 이동하기")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
            }
            .navigationDestination(for: String.self) { value in
                switch value {
                case "1":
                    DetailView1().environmentObject(navigationManager)
                case "2":
                    DetailView2()
                        .environmentObject(navigationManager)
                case "3":
                    DetailView3()
                        .environmentObject(navigationManager)
                case "4":
                    DetailView4()
                        .environmentObject(navigationManager)
                default:
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
