/* AboutMe.swift --> VisibleSounds. Created by Miguel Torres on 18/04/23. */

import SwiftUI

struct AboutMe: View {
    
    // Creamos el objeto observable para toda la aplicación, que usaremos para reproducir audio.
    @StateObject var audioPlayer = AudioPlayer()
    
    var body: some View {
        ZStack {
            Image("Back01")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                HStack {
                    Image("Violin")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(100)
                    VStack {
                        Text("Hello, I'm Miguel Torres")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(20)
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
                            .font(.title2)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                            .padding(20)
                    }
                }
                NavigationLink(destination: Intro().environmentObject(audioPlayer)) {
                    ZStack {
                        Image(systemName: "arrowshape.right.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.gray)
                            .frame(width: 100)
                            .padding(20)
                    }
                }.simultaneousGesture(TapGesture().onEnded({
                    audioPlayer.playS(resourceName: "Jump", resourceExtension: "mp3")
                }))
            }
        }
    }
}

struct AboutMe_Previews: PreviewProvider {
    static let audioPlayer = AudioPlayer()
    
    static var previews: some View {
        AboutMe()
            .environmentObject(audioPlayer)
    }
}
