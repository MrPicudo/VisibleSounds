import SwiftUI

struct ContentView: View {
    
    @StateObject var audioPlayer = AudioPlayer()
    
    var body: some View {
        // We create a TabView to handle different tabs in our project.
        TabView {
            // First tab.
            AboutMe()
                .environmentObject(audioPlayer)
                .tabItem {
                    Label("About me", systemImage: "person")
                }
            
            // Second tab
            Intro()
                .environmentObject(audioPlayer)
                .tabItem {
                    Label("Visible sounds", systemImage: "rectangle.inset.filled.and.person.filled")
                }
            
            // Third tab.
            Example()
                .environmentObject(audioPlayer)
                .tabItem {
                    Label("Forms", systemImage: "arrow.triangle.2.circlepath.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let audioPlayer = AudioPlayer()
    
    static var previews: some View {
        ContentView()
            .environmentObject(audioPlayer)
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
