//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jason Cho on 7/13/26.
//

import SwiftUI

struct ContentView: View {
    @State private var num = 0
    @State private var image = ""
    @State private var message = ""
        // makes it mutable, private makes it only accessible in the struct
    var body: some View {
        VStack {
            Spacer()
            
            
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["Hi",
                                "Bill",
                                "foo",
                                "When the Genius Bar Needs Help, They Call You!"]
                message = messages[num]
                image = "image\(num)"
                
                num += 1
                
                if num == messages.count  {
                    num = 0
                }
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
