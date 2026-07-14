//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jason Cho on 7/13/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I am a programmer!"
    // makes it mutable, private makes it only accessible in the struct 
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Button("Click Me") {
                message = "Awesome"
                print(message)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
