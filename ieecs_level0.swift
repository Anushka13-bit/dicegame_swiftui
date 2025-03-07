//
//  ContentView.swift
//  level0ieeecs
//
//  Created by Anushka Gattani on 06/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var dice = "1"

    var body: some View {
        ZStack {

            Image("bg")
                .resizable()
                .ignoresSafeArea()

            VStack {
                // Dice image
                Image(dice)
                    .resizable()
                    .frame(width: 300, height: 300)

                // Roll dice button
                Button(action: {
                    self.rollDice()
                }) {
                    HStack {
                        Image(systemName: "button.horizontal.fill")
                        Text("ROLL DICE")
                    }
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(20)
            }
        }
    }


    func rollDice() {
        let diceno = Int.random(in: 1...6) 
        dice = "\(diceno)"
    }
}

#Preview {
    ContentView()
}
