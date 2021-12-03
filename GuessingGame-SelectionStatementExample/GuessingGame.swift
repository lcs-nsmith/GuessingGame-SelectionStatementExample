//
//  GuessingGame.swift
//  GuessingGame-SelectionStatementExample
//
//  Created by Nate S on 2021-12-02.
//

import SwiftUI

struct GuessingGame: View {
    
    //The current Guess of the user
    @State var currentGuess: Double = 50.0
    
    //The target that we are trying to uess
    //Will prodice an integer in the range 1 to 100, inclusive
    let target = Int.random(in: 1...100)
    
    @State var feedback = ""   //No hint to start the game
    
    var body: some View {
        return VStack {
            Slider(value: $currentGuess,
                   in: 0.0...100.0,
                   step: 1,
                   label: {
                Text("Opacity")
            },
                   minimumValueLabel: {
                Text("0")
            },
                   maximumValueLabel: {
                Text("100")
            })
            
            Text("\(String(format:"%.0f", currentGuess))")
                .font(.system(size: 30, weight: .medium , design: .serif))
            
            Button(action: {
                
                //Make the user's guess into an integer
                let currentGuessAsAnInteger = Int(currentGuess)
                
                //Compare the users curernt guess to the target
                if currentGuessAsAnInteger < target {
                    //Guess Higher
                    feedback = "Guess Higher!"
                } else if currentGuessAsAnInteger > target {
                    feedback = "Guess Lower!"
                } else {
                    feedback = "That's It!"
                }
                
            }, label: {
                Text("Guess")
                    .padding()
                    .padding(.bottom)
                    .font(.system(size: 23, weight: .medium, design: .serif))
            })
                .buttonStyle(.plain)
                .padding(.top)
                .background((RoundedRectangle(cornerRadius: 6).fill(Color.mint)))
            
            Text(feedback)
                .font(.system(size: 30, weight: .medium, design: .serif))
                .padding(.top)
            
            Spacer()
        }
        .navigationTitle("Guessing Game")
        .padding()
    }
}

struct GuessingGame_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GuessingGame()
        }
    }
}
