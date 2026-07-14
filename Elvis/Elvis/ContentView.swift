//
//  ContentView.swift
//  Elvis
//
//  Created by Jason Cho on 7/14/26.
//

import SwiftUI

struct ContentView: View {
    @State private var icon = ""
    @State private var subHeading = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()

            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text(subHeading)
                .font(.largeTitle)
                .fontWeight(.black)
                    .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    icon = "peacesign"
                    subHeading = "Peace"
                }
                Button("Love") {
                    icon = "heart"
                    subHeading = "Love"
                }
                Button("Understanding") {
                    icon = "lightbulb"
                    subHeading = "Understanding"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
