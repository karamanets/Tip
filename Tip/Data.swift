//
//  Data.swift
//  Tip
//
//  Created by Alex Karamanets on 28.12.2022.
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

struct CatPhrases: View {
    
    @Binding var percentage: Int
    
    var phrase = [0 : "Ha-ha seriously...?" ,
                  5 : "Ha-ha seriously...?" ,
                  10: " Well, thank you ...",
                  15: "      Pretty Good"   ,
                  20: "      Very well !"   ,
                  25: " Elon, is that you?"]
    
    
    var body: some View {
        ZStack {
            
            Text("\(phrase[percentage] ?? "")")
                .lineLimit(1)
                .font(.system(size: 15) .bold())
                .foregroundColor(.black)
            
                .offset(x: 133, y: 475)
        }
    }
}
//                  🔱
struct Data_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(percentage: .constant(0))
    }
}
