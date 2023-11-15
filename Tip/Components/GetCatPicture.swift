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
            switch percentage {
            case 0, 5:
                CatPictureModifier(name: "tipCat1")
            case 10:
                CatPictureModifier(name: "tipCat2")
            case 15:
                CatPictureModifier(name: "tipCat3")
            case 20, 25:
                CatPictureModifier(name: "tipCat4")
            default:
                EmptyView()
            }
        }
    }
}
//                  🔱
struct GetCatPicture_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}
