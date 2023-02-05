//
//  Modifier.swift
//  Tip
//
//  Created by Alex Karamanets on 28.12.2022.
//

import SwiftUI

struct ButtonModifier: View {
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 70, height: 30)
                .foregroundColor(Color("color1"))
                .shadow(color: .black, radius: 4, x: 2, y: 3)
                .overlay(RoundedRectangle(cornerRadius: 20) .stroke(Color.black, lineWidth: 1)
                    .shadow(color: .black.opacity(0.5), radius: 2, x: -1, y: -1)
                )
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("color1"), lineWidth: 1)
                    .frame(width: 68, height: 28)
                )
                .overlay(Text ("About")
                    .foregroundColor(.black)
                )
        }
    }
}
//                      🔱
struct ButtonModifier_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(percentage: .constant(0))
    }
}
