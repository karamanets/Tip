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
    @State private var scale = 0.3
    
    
    
    var body: some View {
        
        ZStack (alignment: .topLeading) {
            
    
            LinearGradient(colors: [.white, Color("color1")],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
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
            }
            
            SecondScreenAnimationView(rotation: $rotation, scale: $scale)
            
            CatPhrases()
        }
    }
}


struct CatPhrases: View {
    
    var phrase = ["Ha-ha seriusle... ?", "Well thank you ...", "     Pretty Good", "     Very well !", "Elon is that you?"]
    
    var body: some View {
        ZStack {
            
            Text("\(phrase[2])")
                .lineLimit(1)
                .font(.system(size: 15) .bold())
                .foregroundColor(.black)
            
                .offset(x: 133, y: 475)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}


struct SecondScreenAnimationView: View {
    
    @Binding var rotation: Double
    @Binding var scale   : Double
    
    var body: some View {
        ZStack  {
            
            Image("lamp")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
                .offset(x: 170, y: -75)
            
                .rotation3DEffect(.degrees(rotation), axis: (  x:0, y: 0, z:1 ), anchor: .topLeading)
                .onAppear {
                    let buseAnimation = Animation.easeIn(duration: 3)
                    let repited = buseAnimation
                        .repeatForever(autoreverses: true)
                    return withAnimation(repited) { self.rotation = 3 }
                }
            
            Circle()
                .fill(Color.yellow)
                .frame(width: 100, height: 800)
                .blur(radius: 14)
                .offset(x: 105, y: -93)
                .opacity(scale)
                .onAppear {
                    let buseAnimation = Animation.easeIn(duration: 3)
                    let repited = buseAnimation
                        .repeatForever(autoreverses: true)
                    return withAnimation(repited) { self.scale = 0.7 }
                }
            
            Image("think")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .colorMultiply(.white)
                .opacity(0.4)
                .offset(x:50, y: 90)
            
            Image("branch")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 100)
                .rotationEffect(.degrees(-10))
                .colorMultiply(.black)
                .offset(x: -90, y: 350)
            
            Image("catSecond")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .contrast(10)
                .offset(x: -60, y: 235)
            
            Circle()
                .fill(Color.yellow)
                .frame(width: 20, height: 20)
                .opacity(scale)
                .blur(radius: 6)
                .saturation(5)
                .offset(x: -68, y: 170)
            
            Circle()
                .fill(Color.yellow)
                .frame(width: 20, height: 20)
                .opacity(scale)
                .blur(radius: 6)
                .saturation(5)
                .offset(x: -95, y: 170)
        }
    }
}


