//
//  Data.swift
//  Tip
//
//  Created by Alex Karamanets on 27.12.2022.
//

import SwiftUI

struct CatPhrases: View {
    
    @Binding var percentage: Int
    
    @State private var text = ""
    
    var phrase = [" Ha-ha seriusle...?",
                  " Well thank you ...",
                  "     Pretty Good",
                  "     Very well !",
                  "  Elon is that you?" ]
    
    var catSaid: Int {
        var item = 0
        if percentage == 0  {
        item = 0
        } else if percentage == 5 {
            item = 0
        } else if percentage == 10 {
            item = 1
        } else if percentage == 15 {
            item = 2
        } else if percentage == 20 {
            item = 3
        } else {
            item = 4
        }
        return item
    }
    
    var body: some View {
        ZStack {
            Text("\(phrase[catSaid])")
                .lineLimit(1)
                .font(.system(size: 15) .bold())
                .foregroundColor(.black)
            
                .offset(x: 133, y: 475)
        }
    }
}

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
                    .shadow(color: .black, radius: 2, x: -1, y: -1) )
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.purple, lineWidth: 1)
                    .frame(width: 68, height: 28) )
                .overlay(Text ("About")
                    .foregroundColor(.black) )
                
        }
    }
}
//                        📌
struct Data_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}
