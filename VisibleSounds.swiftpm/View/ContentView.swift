import SwiftUI

struct ContentView: View {
    
    var body: some View {
        // Creamos una TabView para manejar distintas pestañas en nuestro proyecto
        TabView {
            // Primera pestaña
            AboutMe()
                .tabItem {
                    Label("About me", systemImage: "person")
                }
            
            // Segunda pestaña
            Intro()
                .tabItem {
                    Label("Visible sounds", systemImage: "rectangle.inset.filled.and.person.filled")
                }
            
            // Tercera pestaña
            Grid()
                .tabItem {
                    Label("Forms", systemImage: "arrow.triangle.2.circlepath.circle")
                }
            
            // Cuarta pestaña
//            Slider()
//                .tabItem {
//                    Label("Animation", systemImage: "video.fill")
//                }
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
