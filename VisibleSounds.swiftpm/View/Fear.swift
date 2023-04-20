/* Fear.swift --> VisibleSounds. Created by Miguel Torres on 16/04/23. */

import SwiftUI

struct Fear: View {
    
    @EnvironmentObject var audioPlayer: AudioPlayer
    
    var body: some View {
        ZStack {
            Image("Fear")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                ScrollView {
                    Text("")
                }
                NavigationLink(destination: Example().environmentObject(audioPlayer)) {
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
            audioPlayer.playS(resourceName: "Fear", resourceExtension: "mp3")
        }
        .onDisappear {
            audioPlayer.stopSound()
        }
    }
}

struct Fear_Previews: PreviewProvider {
    static let audioPlayer = AudioPlayer()
    static var previews: some View {
        Fear()
            .environmentObject(audioPlayer)
    }
}
