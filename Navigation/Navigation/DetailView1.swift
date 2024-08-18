import SwiftUI

struct DetailView1: View {
    
    //@Binding var path: NavigationPath
    @EnvironmentObject var navigationManager: NavigationManager
    var body: some View {
        VStack(spacing: 20) {
            Text("1번 뷰 입니다.")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 50)
            
            Button {
                //path.append("3")
                navigationManager.navigate(to: "3")
            } label: {
                Text("3번 뷰로 이동하기")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }
    }
}

