//
//  ContentView.swift
//  GuessTheFlagSwiftUI
//
//  Created by admin on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Delete Selection", role: .destructive, action: executeDelete)
            .buttonStyle(.borderedProminent)
    }
    
    func executeDelete() {
        print("Now deleting...")
    }
}

#Preview {
    ContentView()
}
