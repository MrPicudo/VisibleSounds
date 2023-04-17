/* Sad.swift --> VisibleSounds. Created by Miguel Torres on 16/04/23. */

import SwiftUI

struct Sad: View {
    
    @EnvironmentObject var audioPlayer: AudioPlayer
    
    // Enlazamos las instancias de "audioPlayer" de las diferentes vistas para que sean la misma.
//    init(audioPlayer: AudioPlayer) {
//        self.audioPlayer = audioPlayer
//    }
    
    var body: some View {
        ZStack {
            Image("Sadness")
                .resizable()
                .ignoresSafeArea(.all)
            // Imagen de una flecha para ir a la siguiente vista.
            VStack {
                ScrollView {
                    Text("")
                }
                NavigationLink(destination: Anger().environmentObject(audioPlayer)) {
                    Image(systemName: "arrowshape.right.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.white)
                        .frame(width: 50)
                }
            }
        }
        .onAppear {
            audioPlayer.playS(resourceName: "Near", resourceExtension: "mp3")
        }
    }
}

