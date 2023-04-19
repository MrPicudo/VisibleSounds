/* Fear.swift --> VisibleSounds. Created by Miguel Torres on 16/04/23. */

import SwiftUI

struct Fear: View {
    
    @EnvironmentObject var audioPlayer: AudioPlayer
    
    var body: some View {
        ZStack {
            Image("Fear")
                .resizable()
                .ignoresSafeArea(.all)
            // Imagen de una flecha para ir a la siguiente vista.
            VStack {
                ScrollView {
                    Text("")
                }
                NavigationLink(destination: Grid()) {
                    Image(systemName: "arrowshape.right.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.white)
                        .frame(width: 50)
                }
            }
        }
        .onAppear {
            audioPlayer.playS(resourceName: "Fear", resourceExtension: "mp3")
        }
        .onDisappear {
            audioPlayer.stopSound()
        }
    }
}

struct Fear_Previews: PreviewProvider {
    static var previews: some View {
        Fear()
    }
}
