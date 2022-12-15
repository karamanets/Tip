//
//  Picture.swift
//  Tip
//
//  Created by Alex Karamanets on 08.12.2022.
//

import SwiftUI


struct GetCatPicture: View {
    
    @Binding var percentage: Int
    
    var body: some View {
        VStack {
            
            if percentage == 0 { CatPictureModifire(name: "tipCat1") }
            if percentage == 5 { CatPictureModifire(name: "tipCat1") }
            if percentage == 10 { CatPictureModifire(name: "tipCat2") }
            if percentage == 15 { CatPictureModifire(name: "tipCat3") }
            if percentage == 20 { CatPictureModifire(name: "tipCat4") }
            if percentage == 25 { CatPictureModifire(name: "tipCat4") }
        }
    }
}
