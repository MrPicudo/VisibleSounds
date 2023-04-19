/* Example.swift --> VisibleSounds. Created by Miguel Torres on 19/04/23. */

import SwiftUI

struct Example: View {
    
    // Variable de estado que almacena el nombre del frame para la animación.
    @State var name: String = "A1"
    @State var times: Double = 0.0
    
    @EnvironmentObject var audioPlayer: AudioPlayer
    
    // Variable de estado para controlar los botones activos.
    @State var showing: Bool = false
    
    var body: some View {
        ZStack {
            Image("Back01")
                .resizable()
                .ignoresSafeArea(.all)
            VStack(spacing: 50) {
                HStack {
                    VStack {
                        Text("Si hacemos vibrar una placa metálica plana, que contiene arena o sal sobre su superficie, con un sonido de una determinada frecuencia, por ejemplo, de 345 Hertz, se formará la siguiente figura sobre la placa metática: ")
                            .font(.title2)
                            .fontWeight(.semibold)
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
                                times += 1 // Modificamos el contador para que cada ciclo se muestre en un tiempo distinto
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
                        .disabled(showing) // Desactivamos el botón cada vez que se esté mostrando una animación.
                    }
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
