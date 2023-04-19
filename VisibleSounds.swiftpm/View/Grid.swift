/* Grid.swift --> VisibleSounds. Created by Miguel Torres on 18/04/23. */

import SwiftUI

struct Grid: View {
    
    // Variable de estado que almacena el nombre del frame para la animación.
    @State var name: String = "A1"
    @State var times: Double = 0.0
    
    @EnvironmentObject var audioPlayer: AudioPlayer
    
    // Objeto que define un arreglo de elementos "GridItem()", es decir, creamos una cuadrícula que tendrá 3 columnas.
    let columnLayout = Array(repeating: GridItem(), count: 6)
    
    // Variable mutable que define el color seleccionado para mostrarlo en el texto "Selected Color" de la app.
    @State var selectedAnimation = FrameSound(name: "A30")
    
    // Variable de estado para controlar los botones activos.
    @State var showing: Bool = false
    
    // Arreglo de imágenes para crear los botones que activan las animaciones.
    let allAnimations: [FrameSound] = [
        FrameSound(name: "A30"),
        FrameSound(name: "B30"),
        FrameSound(name: "C30"),
        FrameSound(name: "D30"),
        FrameSound(name: "E30"),
        FrameSound(name: "F30"),
        FrameSound(name: "G30"),
        FrameSound(name: "H30"),
        FrameSound(name: "I30"),
        FrameSound(name: "J30"),
        FrameSound(name: "K30"),
        FrameSound(name: "L30"),
        FrameSound(name: "M30"),
        FrameSound(name: "N30"),
        FrameSound(name: "O30"),
        FrameSound(name: "P30"),
        FrameSound(name: "Q30")
    ]
    
    var body: some View {
        
        ZStack {
            Image("Back01")
                .resizable()
                .ignoresSafeArea(.all)
            
            VStack {
                // Instrucciones de la app
                Text("Select an image to view how it is formed")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(.top, 100)
                // Usamos un ScrollView para que en caso de que haya más colores de los que caben, podamos desplazarnos.
                ScrollView {
                    // Iniciamos la cuadrícula que se crea con el arreglo de objetos GridItem que definimos arriba. El tipo de objeto "LayVGrid" crea cada cuadrícula o "grid" hasta que se necesita, y no antes. El argumento de LazyVGrid define cuántas columnas se van a mostrar en la cuadrícula.
                    LazyVGrid(columns: columnLayout) {
                        // Por cada color en la lista de "allColors", vamos a crear un botón.
                        ForEach(allAnimations) { animation in
                            Button {
                                // La acción que genera el botón es cambiar la imagen seleccionada
                                selectedAnimation = animation
                                // Ciclo para la animación seleccionada
                                for i in 1...30 {
                                    Timer.scheduledTimer(withTimeInterval: 0.07 * times, repeats: false) { timer in
                                        name = String(selectedAnimation.name.first!) + String(i)
                                        showing = !name.contains("30")
                                    }
                                    times += 1 // Modificamos el contador para que cada ciclo se muestre en un tiempo distinto
                                }
                                times = 0.0
                                audioPlayer.playS(resourceName: "Jump", resourceExtension: "mp3")
                            } label: {
                                // En un ZStack el primer elemento va abajo de los que le siguen.
                                ZStack {
                                    Image(animation.name)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(20)
                                    Image("Background")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                }
                            }
                            .buttonStyle(.automatic) // Estilo del botón.
                            .disabled(showing) // Desactivamos el botón cada vez que se esté mostrando una animación.
                            .foregroundColor(Color.black)
                        }
                    }
                    .padding(20)
                }
                ZStack {
                    Image(name)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("Background")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .padding(.bottom, 30)
                Text(hertzvalue(name: name))
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 50)
            }
        }
        
    }
}

