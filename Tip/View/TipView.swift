//
//  ContentView.swift
//  Tip
//
//  Created by Alex Karamanets on 08.12.2022.
//

import SwiftUI

struct TipView: View {
    
    @StateObject var vm = TipViewModel()
    
    var body: some View {
        
        ZStack {
            NavigationStack {
                Form {
                    Section {
                        TextField("", text: $vm.model.amount)
                            .keyboardType(.numbersAndPunctuation)
                    } header: {
                        Text("Enter you're sum")
                            .offset(x: 10)
                    }
                    Section {
                        Picker("", selection: $vm.model.numberOfPeople) {
                            
                            ForEach(2 ..< 100, id: \.self) { item in
                                Text("\(item) People")
                            }
                        }
                    } header: {
                        Text("Enter the number of people")
                            .offset(x: 10)
                    }
                    Section {
                        Picker("", selection: $vm.model.percentage) {
                            
                            ForEach(vm.model.data, id: \.self) { item in
                                Text("\(item)")
                            }
                        } .pickerStyle(.segmented)
                    } header: {
                        Text("Enter the percentage")
                            .offset(x: 10)
                    }
                    Section {
                        Text("\(vm.model.fullSum, specifier: "%.0f") $")
                        
                    } header: {
                        Text("amount per person")
                            .padding()
                            .offset(x: 66)
                    }
                    
                    GetCatPicture(percentage: $vm.model.percentage)
                        .shadow(color: Color("color1"), radius: 5,x: 2,y: 2)
                        
                }
                Button {
                    vm.model.secondScreen = true
                } label: {
                    ButtonModifier()
                }
                .sheet(isPresented: $vm.model.secondScreen) {
                    SecondView(percentage: $vm.model.percentage)
                }
            }
            .navigationTitle("Count you're bill")
            .navigationBarTitleDisplayMode(.inline)
            .overlay { LottieView(animation: $vm.model.isAnimated) }
        }
        .onSubmit {
            vm.model.isAnimated.toggle()
        }
    }
}
//                  🔱
struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}
