//
//  GetCatPicture.swift
//  Tip
//
//  Created by Alex Karamanets on 04.02.2023.
//

import SwiftUI

struct GetCatPicture: View {
    
    @Binding var percentage: Int
    
    var body: some View {
        VStack {
            if percentage == 0 { CatPictureModifier(name: "tipCat1") }
            if percentage == 5 { CatPictureModifier(name: "tipCat1") }
            if percentage == 10 { CatPictureModifier(name: "tipCat2") }
            if percentage == 15 { CatPictureModifier(name: "tipCat3") }
            if percentage == 20 { CatPictureModifier(name: "tipCat4") }
            if percentage == 25 { CatPictureModifier(name: "tipCat4") }
        }
    }
}
