//
//  CafeList.swift
//  DataConnect
//
//  Created by 감자의 맥북 on 8/19/24.
//

import SwiftUI

struct CafeList: View {
    var body: some View {
        NavigationStack{
            List(cafes){ cafe in
                NavigationLink {
                    CafeDetail()
                }label:{
                    Text(cafe.title)
                }
                
            }
        }
       
    }
}

#Preview {
    CafeList()
}
