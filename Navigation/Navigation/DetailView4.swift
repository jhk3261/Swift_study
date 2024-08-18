import SwiftUI

struct DetailView4: View {
    
    //@Binding var path: NavigationPath
    @EnvironmentObject var navigationManager: NavigationManager
    var body: some View {
        Text("4번 뷰 입니다.")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.top, 50)
        
        Button {
            //path.removeLast()
            navigationManager.pop()
        } label: {
            Text("뒤로 가기 없이 뒤로가기?")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.purple)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.horizontal)
        }
        Button {
            navigationManager.oneTwoThreeFour()
        } label: {
            Text("내마음대로커스텀")
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

