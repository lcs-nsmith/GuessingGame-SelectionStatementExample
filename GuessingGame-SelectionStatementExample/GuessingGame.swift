//
//  GuessingGame.swift
//  GuessingGame-SelectionStatementExample
//
//  Created by Nate S on 2021-12-02.
//

import SwiftUI

struct GuessingGame: View {
    var body: some View {
        return VStack {
            Slider(value: .constant(50.0),
                   in: 0.0...100.0,
                   label: {
                        Text("Opacity")
            },
                   minimumValueLabel: {
                        Text("0")
            },
                   maximumValueLabel: {
                        Text("100")
            })
            
            Text("61")
                .font(.title)
                .fontWeight(.semibold)
            
            Button(action: {
                print("Guess Sumbitted")
            }, label: {
                Text("Guess")
                    .background(RoundedRectangle(cornerRadius: 5).fill(Color.mint))
                    .foregroundColor(.black)
            })
                .buttonStyle(.plain)
                .padding(.top)

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
