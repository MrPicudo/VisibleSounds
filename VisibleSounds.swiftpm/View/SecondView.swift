/* SecondView.swift --> VisibleSounds. Created by Miguel Torres on 15/04/23. */

import SwiftUI

struct SecondView: View {
    
    // Variable de estado que almacena el nombre del frame para la animación.
    @State var name: String = "A1"
    @State var times: Double = 0.0
    
    // Después de crear el @StateObject en esa vista, todos los que siguen (a partir de navigation links) deben tener un @EnvironmentObject, que se pasa desde el mismo navigation link.
    @EnvironmentObject var audioPlayer: AudioPlayer
    
    var body: some View {
        
        ZStack {
            Image("Back01")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Text("Una manera más tradicional de De esta manera, la Cimática nos permite observar la belleza subyacente del sonido, esa complejidad oculta que acompaña al impacto que tiene en nuestras emociones, haciéndonos sentir:")
                    .font(.title2)
                    .padding(15)
                    .foregroundColor(Color.white)
                // Imagen de una flecha para ir a la siguiente vista.
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
    static var previews: some View {
        SecondView()
    }
}
