/* Sad.swift --> VisibleSounds. Created by Miguel Torres on 16/04/23. */

import SwiftUI

struct Sad: View {
    
    @EnvironmentObject var audioPlayer: AudioPlayer
    
    var body: some View {
        ZStack {
            Image("Sadness")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                ScrollView {
                    Text("")
                }
                NavigationLink(destination: Anger().environmentObject(audioPlayer)) {
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
            audioPlayer.playS(resourceName: "Near", resourceExtension: "mp3")
        }
    }
}


struct Sad_Previews: PreviewProvider {
    static let audioPlayer = AudioPlayer()
    static var previews: some View {
        Sad()
            .environmentObject(audioPlayer)
    }
}
