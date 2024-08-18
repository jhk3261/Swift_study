import SwiftUI

struct DetailView2: View {
    
    //@Binding var path: NavigationPath
    @EnvironmentObject var navigationManager: NavigationManager
    var body: some View {
        VStack(spacing: 20) {
            Text("2번 뷰입니다.")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 50)
            
            Button {
                //path.append("4")
                navigationManager.navigate(to: "4")
            } label: {
                Text("4번 뷰로 이동하기")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }
    }
}
