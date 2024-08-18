import SwiftUI

struct Actor: Hashable {
    var name: String
    var income: Int
    var movie: String
}

var actors: [Actor] = [
    .init(name: "전지현", income: 40, movie: "별에서 온 그대"),
    .init(name: "김수현", income: 88, movie: "눈물의 여왕"),
    .init(name: "고윤정", income: 50, movie: "무빙"),
    .init(name: "송강호", income: 38, movie: "기생충")
]

// 화면 2. 배우
struct ActorView: View {
    var actor: Actor
    
    var body: some View {
        VStack(spacing: 8) {
            Text("이름 : " + actor.name)
                .fontWeight(.bold)
            Text("월급 : \(actor.income)만 원")
            Text("대표작품 : " + actor.movie)
        }
    }
}
