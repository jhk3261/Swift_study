import SwiftUI

// 화면 4. 전달할 데이터가 없는 루미 뷰
struct LumiView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            Text("난 아무것도 전달 받을 게 없어.")
                .foregroundColor(.red)
                .fontWeight(.bold)
            
        }
    }
}
