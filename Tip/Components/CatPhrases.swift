//
//  CatPhrases.swift
//  Tip
//
//  Created by Alex Karamanets on 04.02.2023.
//

import SwiftUI

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
//                        🔱
struct CatPhrases_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(percentage: .constant(0))
    }
}
