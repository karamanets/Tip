//
//  SecondViewCatPhrases.swift
//  Tip
//
//  Created by Alex Karamanets on 26.12.2022.
//

import SwiftUI

struct CatPhrases: View {
    
    var percentage: TipView
    
    var phrase = [" Ha-ha seriusle...?",
                  " Well thank you ...",
                  "     Pretty Good",
                  "     Very well !",
                  "  Elon is that you?" ]
    
    var catSaid: Int {
        var item = 0
        if percentage.percentageTip == 0  {
        item = 0
        } else if percentage.percentageTip == 5 {
            item = 1
        } else if percentage.percentageTip == 10 {
            item = 2
        } else if percentage.percentageTip == 15 {
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
//                        📌
struct SecondViewCatPhrases_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
