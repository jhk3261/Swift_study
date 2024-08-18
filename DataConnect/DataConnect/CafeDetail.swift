//
//  CafeDetail.swift
//  DataConnect
//
//  Created by 감자의 맥북 on 8/19/24.
//

import SwiftUI

struct CafeDetail: View {
    var cafe = cafes[0]
    var body: some View {
        VStack{
            Text(cafe.title)
            Text(cafe.address)
            Text("\(cafe.latitude), \(cafe.longitude)")
        }
    }
}

#Preview {
    CafeDetail()
}
