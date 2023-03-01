//
//  TipModel.swift
//  Tip
//
//  Created by Alex Karamanets on 10.02.2023.
//

import Foundation

struct TipModel {
    
    var percentage     = 0
    var numberOfPeople = 2
    var amount         = ""
    var sumTip         = ""
    var secondScreen   = false
    var isAnimated     = false
    
    let data = [5, 10, 15, 20, 25]
    
    var fullSum: Double {
        let sum          = Double(amount) ?? 0
        let sumOnePerson = sum / Double(numberOfPeople)
        let tip          = Double(percentage) / 100
        let tipOnePerson = sumOnePerson * tip
        let endSum       = tipOnePerson + sumOnePerson
        return endSum
    }
}
