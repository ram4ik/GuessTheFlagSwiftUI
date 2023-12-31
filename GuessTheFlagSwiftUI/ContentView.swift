//
//  ContentView.swift
//  GuessTheFlagSwiftUI
//
//  Created by admin on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = [
        "Estonia",
        "France",
        "Germany",
        "Ireland",
        "Italy",
        "Nigeria",
        "Poland",
        "Spain",
        "UK",
        "Ukraine",
        "US"
    ]
        .shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    @State private var score = 0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.mint, .blue, .mint], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                        .font(.subheadline.weight(.heavy))
                    
                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)
                        .font(.largeTitle.weight(.semibold))
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                            .shadow(radius: 10)
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(40)
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 20))
            .padding(.horizontal, 20)
            
            VStack {
                HStack {
                    Text("Score: \(score)")
                        .foregroundStyle(.white)
                        .font(.largeTitle.weight(.semibold))
                        .padding()
                    Spacer()
                }
                Spacer()
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuastions)
        } message: {
            Text("Your score is \(score)")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct!"
            score += 1
        } else {
            scoreTitle = "Wrong!"
            score -= 1
        }
        
        showingScore = true
    }
    
    func askQuastions() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}
