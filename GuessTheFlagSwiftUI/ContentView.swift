//
//  ContentView.swift
//  GuessTheFlagSwiftUI
//
//  Created by admin on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LinearGradient(stops: [
            Gradient.Stop(color: .white, location: 0.45),
            Gradient.Stop(color: .black, location: 0.55)
        ], startPoint: .top, endPoint: .bottom)
    }
}

#Preview {
    ContentView()
}
