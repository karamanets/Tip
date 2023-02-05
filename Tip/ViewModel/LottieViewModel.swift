//
//  LottieViewModel.swift
//  Tip
//
//  Created by Alex Karamanets on 05.02.2023.
//

import SwiftUI
import Lottie


struct LottieViewModel: UIViewRepresentable {
    
    @Binding var animation: Bool
   
    func makeUIView(context: Context) -> some LottieAnimationView {
        let view = LottieAnimationView(name: "cat")
        view.play { complete in
            if complete {
                animation = false
            }
        }
        return view
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}
