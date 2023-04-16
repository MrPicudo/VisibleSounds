import SwiftUI
import AVFoundation

struct ContentView: View {
    
    // Variable de estado que almacena el nombre del frame para la animación.
    @State var name: String = "A1"
    @State var times: Double = 0.0
    let audioPlayer = AudioPlayer()
    
    var body: some View {
            ZStack {
                Image("Back01")
                    .resizable()
                    .ignoresSafeArea(.all)
                    VStack {
                        ScrollView {
                            Text("Cymatics")
                                .font(.largeTitle)
                                .fontWeight(.black)
                                .foregroundColor(Color.white)
                                .padding(.top, 50)
                            Text("La cimática es el estudio de algo invisible a nuestros ojos: la geometría escondida dentro de las vibraciones que genera el sonido. Ernst Chladni, músico y filósofo Alemán descubrió estas figuras al hacer vibrar un plato metálico con un arco de violín, y las bautizó como patrones de Chladni.")
                            .font(.body)
                                .padding(15)
                                .foregroundColor(Color.white)
                            Image("Violin")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(30)
                        }
                        // Imagen de una flecha para ir a la siguiente vista.
                        NavigationLink(destination: SecondView()) {
                            Image(systemName: "arrowshape.right.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color.gray)
                                .frame(width: 50)
                                .padding(.top, 20)
                        }
                    }
            }
            .onAppear {
                audioPlayer.playS(resourceName: "Correct", resourceExtension: "mp3")
            }
    }
}

/* Ejemplo de cómo agregar una acción de gesto a una vista:
 
 Image(name)
     .resizable()
     .aspectRatio(contentMode: .fit)
     .frame(width: 250)
     .gesture(
     TapGesture()
         .onEnded({ _ in
             for i in 1...21 {
                 Timer.scheduledTimer(withTimeInterval: 0.1 * times, repeats: false) { timer in
                     name = String(i)
                     if i == 21 {
                         name = "1"
                     }
                 }
                 times += 1 // Modificamos el contador para que cada ciclo se muestre en un tiempo distinto
             }
             times = 0.0
         }))
 
 */


/* Ejemplo de una función para reproducir sonido en SwiftUI:
 
 // Variable para reproducir el audio (va dentro de la vista, pero fuera del body)
 @State var player: AVAudioPlayer!
 
 // Las funciones extras van debajo del body.
 func playSound() {
     // Creamos una url al archivo de audio
     let url = Bundle.main.url(forResource: "Correct", withExtension: "mp3")
     // Evitamos usar archivos inexistentes con guard (no hacemos nada si la url está vacía)
     guard url != nil else {
         print("Nothing")
         return
     }
     // Si existe la url, reproducimos el sonido
     do {
         player = try AVAudioPlayer(contentsOf: url!)
         player?.play()
     } catch {
         print("Error")
     }
 }
 
 */


struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
