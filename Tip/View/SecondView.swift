//
//  SecondScreen.swift
//  Tip
//
//  Created by Alex Karamanets on 08.12.2022.
//

import SwiftUI

struct SecondView: View {
    
    @Environment(\.dismiss) var back
    @State private var rotation = 0.0
    @State private var scale    = 0.3
    @Binding var percentage: Int
    
    var body: some View {
        
        GeometryReader { _ in

            ZStack (alignment: .topLeading) {

                LinearGradient(colors: [Color("color2"), Color("color1")],
                               startPoint: .topLeading,
                               endPoint  : .bottomTrailing)
                .ignoresSafeArea()
                
                Button {
                    back()
                } label: {
                    Image(systemName: "arrowshape.turn.up.backward.fill")
                        .foregroundColor(Color("color1"))
                        .font(.title)
                        .padding()
                        .offset(x: 10, y: 30)
                        .opacity(0.6)
                        .shadow(color: .purple, radius: 5, x: 2, y: 2)
                }
                SecondScreenAnimationView(rotation: $rotation, scale: $scale)
                
                CatPhrases(percentage: $percentage)
            }
        }
    }
}
//                        🔱
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(percentage: .constant(0))
    }
}





