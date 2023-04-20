/* SecondView.swift --> VisibleSounds. Created by Miguel Torres on 15/04/23. */

import SwiftUI

struct SecondView: View {
    
    // VState variable that stores the name of the frame for the animation.
    @State var name: String = "A1"
    @State var times: Double = 0.0
    
    // After creating the @StateObject in that view, all subsequent ones (from navigation links) must have an @EnvironmentObject, which is passed from the same navigation link.
    @EnvironmentObject var audioPlayer: AudioPlayer
    
    var body: some View {
        
        ZStack {
            Image("Back01")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Text("A more modern way to visualize Cymatics is through a sound player at different frequencies, where we can observe that the higher the frequency, the greater the complexity of the figure formed. In this way, Cymatics allows us to observe the underlying beauty of sound, that hidden complexity that accompanies the impact it has on our emotions, making us feel...")
                    .font(.title2)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                    .padding(50)
                NavigationLink(destination: Happy().environmentObject(audioPlayer)) {
                    ZStack {
                        Image(systemName: "arrowshape.right.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.gray)
                            .frame(width: 100)
                            .padding(20)
                    }
                }
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static let audioPlayer = AudioPlayer()
    static var previews: some View {
        SecondView()
            .environmentObject(audioPlayer)
    }
}
