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
            
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(msg)
                .font(.largeTitle)
                .foregroundStyle(.red)
                .fontWeight(.heavy)

            Spacer()
            
            Button("Press Me!") {
                let message1 = "You Are Awesome!"
                let img1 = "image0"
                let message2 = "You Are Great!"
                let img2 = "image1"

                msg = msg == message1 ?  message2 : message1
                image = image == img1 ? img2 : img1
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
