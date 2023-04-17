/* Anger.swift --> VisibleSounds. Created by Miguel Torres on 16/04/23. */

import SwiftUI

struct Anger: View {
    
    @EnvironmentObject var audioPlayer: AudioPlayer
    
    var body: some View {
        ZStack {
            Image("Anger")
                .resizable()
                .ignoresSafeArea(.all)
            // Imagen de una flecha para ir a la siguiente vista.
            VStack {
                ScrollView {
                    Text("")
                }
                NavigationLink(destination: Fear().environmentObject(audioPlayer)) {
                    Image(systemName: "arrowshape.right.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.white)
                        .frame(width: 50)
                }
            }
        }
        .onAppear {
            audioPlayer.playS(resourceName: "Anger", resourceExtension: "mp3")
        }
    }
}
