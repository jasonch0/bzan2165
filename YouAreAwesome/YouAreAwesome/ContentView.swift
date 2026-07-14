//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jason Cho on 7/13/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("What is Football to You?")
                .font(.largeTitle)
                .fontWeight(.thin)
                .foregroundStyle(.orange)
            HStack {
                Image(systemName: "figure.american.football")
                    .resizable()
                Image(systemName: "figure.australian.football")
                    .resizable()
                Image(systemName: "figure.soccer")
                    .resizable()
            }
            .scaledToFit()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
