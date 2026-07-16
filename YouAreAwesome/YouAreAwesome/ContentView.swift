//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jason Cho on 7/13/26.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var lastImageNum = -1
    @State private var lastMessageNum = -1
    @State private var lastSoundNum = -1
    @State private var message = ""
    @State private var image = ""
    @State private var soundName = ""
    @State private var audioPlayer: AVAudioPlayer!
    
    let numOfImages = 10
    let numOfSounds = 6
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

            Spacer()
            
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
                
                var imageNum = Int.random(in: 0...numOfImages-1)
                while imageNum == lastImageNum {
                    imageNum = Int.random(in: 0...numOfImages-1)
                }
                image = "image\(imageNum)"
                lastImageNum = imageNum
                
                var soundNum: Int
                repeat {
                    soundNum = Int.random(in: 0...numOfSounds-1)
                } while soundNum == lastSoundNum
                soundName = "sound\(soundNum)"
                
                guard let soundFile = NSDataAsset(name: soundName) else {
                    print("🤓 Could not read file named \(soundName)")
                    return
                }
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                    
                } catch {
                    print("🤓 ERROR: \(error.localizedDescription) creatug audioPlayer")
                    
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
