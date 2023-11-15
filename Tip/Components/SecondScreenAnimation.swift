//
//  SecondScreenAnimation.swift
//  Tip
//
//  Created by Alex Karamanets on 26.12.2022.
//

import SwiftUI

struct SecondScreenAnimationView: View {
    
    @Binding var rotation: Double
    @Binding var scale   : Double
    
    var body: some View {
        ZStack  {
            Text("""
                 Thank you for
                 your care
                 
                 Gratitude is a sure
                 way to bring more
                 into your life.
                 """)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .font(.custom("abosanova", size: 22))
                .padding()
                .shadow(color: .purple, radius: 4, x: 3, y: 3)
                .overlay(RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(Color.pink.opacity(0.2))
                    .shadow(color: .purple, radius: 5, x: 5, y: 5)
                    .blur(radius: 60) )
                .offset(x: 55, y: -230)
                .opacity(0.9)

            Image("lamp")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
                .offset(x: 170, y: -45)
                .rotation3DEffect(.degrees(rotation), axis: (  x:0, y: 0, z:1 ), anchor: .topLeading)
                .onAppear {
                    let baseAnimation = Animation.easeIn(duration: 3)
                    let repeating = baseAnimation
                        .repeatForever(autoreverses: true)
                    return withAnimation(repeating) { self.rotation = 3 }
                }
            
            Circle()
                .fill(Color.yellow)
                .frame(width: 100, height: 800)
                .blur(radius: 14)
                .offset(x: 105, y: -93)
                .opacity(scale)
                .onAppear {
                    let baseAnimation = Animation.easeIn(duration: 3)
                    let repeating = baseAnimation
                        .repeatForever(autoreverses: true)
                    return withAnimation(repeating) { self.scale = 0.7 }
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

//                         🔱
struct SecondScreenAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(percentage: .constant(0))
    }
}

