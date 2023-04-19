/* Happy.swift --> VisibleSounds. Created by Miguel Torres on 16/04/23. */

import SwiftUI
import Combine

struct Happy: View {
    
    // Instancia de la clase AudioPlayer para reproducir sonidos
    @EnvironmentObject var audioPlayer: AudioPlayer

    var body: some View {
        ZStack {
            Image("Joy")
                .resizable()
                .ignoresSafeArea(.all)
            // Imagen de una flecha para ir a la siguiente vista.
            VStack {
                ScrollView {
                    Text("")
                }
                NavigationLink(destination: Sad().environmentObject(audioPlayer)) {
                    Image(systemName: "arrowshape.right.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.white)
                        .frame(width: 100)
                        .padding(.bottom, 50)
                }
            }
        }
        .onAppear {
            audioPlayer.playS(resourceName: "Mario", resourceExtension: "mp3")
        }
        
    }
}

struct Happy_Previews: PreviewProvider {
    static var previews: some View {
        Happy()
    }
}
