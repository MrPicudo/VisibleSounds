/* Intro.swift --> VisibleSounds. Created by Miguel Torres on 18/04/23. */

import SwiftUI

struct Intro: View {
    
    @State var times: Double = 0.0
    // Instancia de la clase AudioPlayer para reproducir sonidos
    @EnvironmentObject var audioPlayer: AudioPlayer
    
    var body: some View {
            ZStack {
                Image("Back01")
                    .resizable()
                    .ignoresSafeArea(.all)
                    VStack {
                        Text("Cymatics")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.top, 30)
                        HStack {
                            Text("La cimática es el estudio de algo invisible a nuestros ojos: la geometría escondida dentro de las vibraciones que genera el sonido. Ernst Chladni, músico y filósofo Alemán descubrió estas figuras al hacer vibrar un plato metálico con un arco de violín, y las bautizó como patrones de Chladni.")
                                .font(.title2)
                                .multilineTextAlignment(.center)
                                .padding(50)
                                .foregroundColor(Color.white)
                            Image("Violin")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(100)
                        }
                        // Creamos el navigation link indicando que el objeto observable "audioPlayer" pasa a la siguiente vista.
                        NavigationLink(destination: SecondView().environmentObject(audioPlayer)) {
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

struct SwiftUIView_Previews: PreviewProvider {
    static let audioPlayer = AudioPlayer()
    static var previews: some View {
        Intro()
            .environmentObject(audioPlayer)
    }
}
