import SwiftUI

struct Mento: Hashable {
    var name: String
    var age: Int
    var color: Color
}

var mentos: [Mento] = [
    .init(name: "루미", age: 40, color: .red),
    .init(name: "레이", age: 88, color: .orange),
    .init(name: "제로", age: 50, color: .yellow),
    .init(name: "이토", age: 38, color: .green),
    .init(name: "벡스터", age: 99, color: .blue),
    .init(name: "제롬", age: 50, color: .indigo),
    .init(name: "피터", age: 38, color: .purple)
]

// 화면 3. 멘토
struct MentoView: View {
    var mento: Mento
    
    init(mento: Mento) {
        self.mento = mento
    }
    
    var body: some View {
        ZStack {
            mento.color.ignoresSafeArea()
            VStack {
                Text("이름 : " + mento.name)
                    .fontWeight(.bold)
                Text("나이 : \(mento.age)")
            }
        }
    }
}





