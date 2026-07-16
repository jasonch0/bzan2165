//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jason Cho on 7/13/26.
//

import SwiftUI

struct ContentView: View {
    @State private var lastImageNum = -1
    @State private var lastMessageNum = -1
    @State private var message = ""
    @State private var image = ""
        // makes it mutable, private makes it only accessible in the struct
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .frame(height: 130)
                .minimumScaleFactor(0.5)
                .animation(.easeInOut(duration: 0.15), value: message)

            
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: image)
            
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["Hi",
                                "Bill",
                                "foo",
                                "When the Genius Bar Needs Help, They Call You! BLAH BLAH BLAH BLAH BLAH"]
                
                var messageNum: Int
                repeat {
                    messageNum = Int.random(in: 0...messages.count-1)
                } while messageNum == lastMessageNum
                message = messages[messageNum]
                
                var imageNum = Int.random(in: 0...4)
                while imageNum == lastImageNum {
                    imageNum = Int.random(in: 0...4)
                }
                image = "image\(imageNum)"
                lastImageNum = imageNum
            
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
