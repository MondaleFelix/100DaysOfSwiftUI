//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mondale Work on 9/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingScore = false
    @State private var endGame = false
    @State private var scoreTitle = ""
    @State private var counter = 0
    @State private var userScore = 0
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        
        ZStack {
            
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()

            VStack {
                Spacer()
                Text("Guess the flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                VStack(spacing: 15){
                    VStack {
                        Text("Tap the flag of")
                            .font(.subheadline.weight(.heavy))
                            .foregroundStyle(.secondary)
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .clipShape(.capsule)
                                .shadow(radius: 5)
                        }
                    
                    }

                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                .alert(scoreTitle, isPresented: $showingScore) {
                    Button("Continue", action: askQuestion)
                } message: {
                    Text("Your score is \(userScore)")
                }
                .alert(scoreTitle, isPresented: $endGame) {
                    Button("Play again?", action: resetGame)
                } message: {
                    Text("Your score is \(userScore)")
                }
                Spacer()
                Spacer()
                
                Text("Score: \(userScore)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()

            
        }
    }
    
    func resetGame() {
        counter = 0
        scoreTitle = ""
        userScore = 0


    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func flagTapped(_ number: Int) {

        
        if number == correctAnswer {
            scoreTitle = "Correct"
            userScore += 1
        } else {
            scoreTitle = "Wrong, the answer is \(countries[correctAnswer]). You selected \(countries[number])"
        }
        
        showingScore = true
        counter += 1
        
        if counter == 8 {
            scoreTitle = "Game Over! Your score is \(userScore)"
            endGame = true
        }
        

    }
}

#Preview {
    ContentView()
}
