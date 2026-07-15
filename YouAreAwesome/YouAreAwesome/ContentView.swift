//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jason Cho on 7/13/26.
//

import SwiftUI

struct ContentView: View {
    @State private var image = ""
    @State private var msg = ""
    // makes it mutable, private makes it only accessible in the struct
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(msg)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You Are Awesome!"
                let img1 = "hand.thumbsup"
                let message2 = "You Are Great!"
                let img2 = "sun.max.fill"
                if msg == message1 {
                    image = img2
                    msg = message2
                } else {
                    msg = message1
                    image = img1
                }
            }
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
