//
//  ContentView.swift
//  DiceRoller
//
//  Created by MacBook Air on 30/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.title.lowercaseSmallCaps())
                .foregroundStyle(.white)
            HStack{
                ForEach(1...numberOfDice, id: \.self){
                    _ in DiceView()
                        .foregroundStyle(.white)
                }
            }
            .padding()
            HStack{
                Button("Remove", systemImage: "minus.circle.fill"){
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                .labelStyle(.iconOnly)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Button("Add", systemImage: "plus.circle.fill"){
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 5)
                .labelStyle(.iconOnly)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.BG)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}

