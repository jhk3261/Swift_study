//
//  CoffeeDetail.swift
//  DataConnect
//
//  Created by 감자의 맥북 on 8/19/24.
//

import SwiftUI

struct CoffeeDetail: View {
    var coffee = coffees[1]
    
    var body: some View {
        VStack{
            Image(coffee.imageName)
            Text(coffee.name)
        }
    }
}

#Preview {
    CoffeeDetail()
}
