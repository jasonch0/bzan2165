//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jason Cho on 7/13/26.
//

import SwiftUI

struct ContentView: View {
    @State private var num = 0
        // makes it mutable, private makes it only accessible in the struct
    var body: some View {
        VStack {
            Spacer()
            
            Image("image\(num)")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Spacer()
            
            Button("Press Me!") {
                num += 1
                
                if num > 9 {
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
