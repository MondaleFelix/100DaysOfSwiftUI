//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mondale Work on 9/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Please read this.")
        }
    }
}

#Preview {
    ContentView()
}
