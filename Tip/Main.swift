//
//  ContentView.swift
//  Tip
//
//  Created by Alex Karamanets on 08.12.2022.
//


// add class for percentage

import SwiftUI

struct TipView: View {
    
    @State private var amound         = ""
    @State private var numberOfPeople = 2
    @State         var percentageTip  = 0
    @State private var sumTip         = ""
    @State private var secondScreen   = false
    
    
    let data = [5, 10, 15, 20, 25]
    
    var fullSum: Double {
        
        let sum          = Double(amound) ?? 0
        let sumOnePerson = sum / Double(numberOfPeople)
        let tip          = Double(percentageTip) / 100
        let tipOnePerson = sumOnePerson * tip
        let endSum       = tipOnePerson + sumOnePerson
        
        return endSum
    }
    var body: some View {
        
        ZStack {
            NavigationStack {
                Form {
                    Section {
                        TextField("", text: $amound)
                    } header: {
                        Text("Enter you're sum")
                            .offset(x: 10)
                    }
                    Section {
                        Picker("", selection: $numberOfPeople) {
                            
                            ForEach(2 ..< 100, id: \.self) { item in
                                Text("\(item) People")
                            }
                        }
                    } header: {
                        Text("Enter the number of people")
                            .offset(x: 10)
                    }
                    Section {
                        Picker("", selection: $percentageTip) {
                            
                            ForEach(data, id: \.self) { item in
                                Text("\(item)")
                            }
                        } .pickerStyle(.segmented)
                    } header: {
                        Text("Enter the percentage")
                            .offset(x: 10)
                    }
                    Section {
                        Text("\(fullSum, specifier: "%.0f") $")
                        
                    } header: {
                        Text("amound per person")
                            .padding()
                            .offset(x: 66)
                    }
                    GetCatPicture(percentage: $percentageTip)
                        .shadow(color: Color("color1"), radius: 5,x: 2,y: 2)
                }
                Button {
                    self.secondScreen = true
                } label: {
                    ButtonModifier()
                }
                .sheet(isPresented: $secondScreen) {
                    SecondView()
                }
            }
            .navigationTitle("Count you're bill")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
//                        📌
struct Main_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}


