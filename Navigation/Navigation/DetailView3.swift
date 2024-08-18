import SwiftUI

struct DetailView3: View {
    
    //@Binding var path: NavigationPath
    @EnvironmentObject var navigationManager: NavigationManager
    var body: some View {
        Text("3번 뷰입니다.")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.top, 50)
        
        Button {
            //path.removeLast(path.count)
            navigationManager.poptoRoot()
        } label: {
            Text("루트로 이동하기")
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
