//
//  LottieView.swift
//  Tip
//
//  Created by Alex Karamanets on 05.02.2023.
//

import SwiftUI
import Lottie

struct LottieView: View {
    
    @Binding var animation: Bool
    
    let frame: CGFloat = 630
    
    var body: some View {
        ZStack {
            if animation {
                LottieViewModel(animation: $animation)
            }
        }
        .frame(width: frame, height: frame)
    }
}
//                  🔱
struct LottieView_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}


