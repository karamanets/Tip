//
//  CustomModifire.swift
//  Tip
//
//  Created by Alex Karamanets on 08.12.2022.
//

import SwiftUI


struct CatPictureModifire: View {
    
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


struct ButtonModifier: View {
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 70, height: 30)
                .foregroundColor(Color("color1"))
                .shadow(color: .black, radius: 4, x: 2, y: 3)
                .overlay(RoundedRectangle(cornerRadius: 20) .stroke(Color.black, lineWidth: 1)
                    .shadow(color: .black, radius: 2, x: -1, y: -1)
                )
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.purple, lineWidth: 1)
                    .frame(width: 68, height: 28)
                         
                )
                .overlay(Text ("About")
                    .foregroundColor(.black)
                )
        }
    }
}
