/* Example.swift --> VisibleSounds. Created by Miguel Torres on 19/04/23. */

import SwiftUI

struct Example: View {
        
    // State variable that stores the name of the frame for the animation.
    @State var name: String = "A1"
    @State var times: Double = 0.0
    
    @EnvironmentObject var audioPlayer: AudioPlayer
    
    // State variable that controls active buttons.
    @State var showing: Bool = false
    
    var body: some View {
        ZStack {
            Image("Back01")
                .resizable()
                .ignoresSafeArea(.all)
            VStack(spacing: 50) {
                HStack {
                    VStack {
                        Text("If we vibrate a flat metal plate, which contains sand or salt on its surface, with a sound of a certain frequency, for example, 345 Hertz, the following figure will form on the metal plate: ")
                            .font(.title2)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.white)
                            .padding(50)
                        Button {
                            for i in 1...30 {
                                    Timer.scheduledTimer(withTimeInterval: 0.09 * times, repeats: false) { timer in
                                        name = "A\(String(i))"
                                        showing = !name.contains("30")
                                        if !showing {
                                            audioPlayer.stopSound()
                                        }
                                    }
                                times += 1 // We modify the counter so that each cycle is displayed at a different time.
                            }
                            times = 0.0
                            audioPlayer.playS(resourceName: "345Hz", resourceExtension: "mp3")
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20.0)
                                    .foregroundColor(Color.blue)
                                    .frame(width: 170, height: 80)
                                Text("Start")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            }
                        }
                        .disabled(showing) // We disable the button each time an animation is being displayed.
                    }
                    /* */
                    ZStack {
                        Image(name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(50)
                        Image("Background")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(50)
                    }
                    .padding(.bottom, 30)
                }
                NavigationLink(destination: Grid().environmentObject(audioPlayer)) {
                    Image(systemName: "arrowshape.right.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.white)
                        .frame(width: 100)
                        .padding(.bottom, 50)
                }
            }
        }
        
    }
}

struct Example_Previews: PreviewProvider {
    static let audioPlayer = AudioPlayer()
    static var previews: some View {
        Example()
            .environmentObject(audioPlayer)
    }
}
