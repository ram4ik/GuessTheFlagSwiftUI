//
//  ContentView.swift
//  GuessTheFlagSwiftUI
//
//  Created by admin on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            Button("Delete Selection", role: .destructive, action: executeDelete)
                .buttonStyle(.borderedProminent)
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("OK") {}
        }
    }
    
    func executeDelete() {
        print("Now deleting...")
        showingAlert.toggle()
    }
}

#Preview {
    ContentView()
}
