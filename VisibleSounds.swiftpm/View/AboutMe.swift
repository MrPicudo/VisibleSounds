/* AboutMe.swift --> VisibleSounds. Created by Miguel Torres on 18/04/23. */

import SwiftUI

struct AboutMe: View {
    
    // We create the observable object for the entire application, which we will use to play audio.
    @StateObject var audioPlayer = AudioPlayer()
    
    var body: some View {
        ZStack {
            Image("Back01")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                HStack {
                    Image("Memoji")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(100)
                        .shadow(radius: 50)
                        .padding(100)
                        
                    VStack {
                        Text("Hello, I'm Miguel Torres")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(20)
                        Text("I am a senior student pursuing a degree in Applied Mathematics and Computing, originally from Xochimilco, Mexico City. Last August, I had the opportunity to begin studying iOS development during my social service at the iOS Development Lab in Mexico. This program, sponsored by Apple, aims to promote programming education and provide growth opportunities through the donation of fully-equipped labs in my country.\n\nMy application, VisibleSound, draws inspiration from a wide range of interests that I am passionate about, such as movies, video games, and educational apps. The main theme focuses on the connection between mathematics and music, merging two of my favorite areas. I sincerely hope you enjoy this creation as much as I enjoyed developing it.")
                            .font(.title2)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                            .padding(50)
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
