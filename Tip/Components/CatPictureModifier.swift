//
//  CatPictureModifier.swift
//  Tip
//
//  Created by Alex Karamanets on 04.02.2023.
//

import SwiftUI

struct CatPictureModifier: View {
    
    var name: String

    var body: some View {
        
        ZStack {
            Image("\(name)")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.leading, 50)
        }
    }
}
//                        🔱
struct CatPictureModifier_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(percentage: .constant(0))
    }
}
