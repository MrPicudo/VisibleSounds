/* SecondView.swift --> VisibleSounds. Created by Miguel Torres on 15/04/23. */

import SwiftUI

struct SecondView: View {
    
    // Variable de estado que almacena el nombre del frame para la animación.
    @State var name: String = "A21"
    @State var times: Double = 0.0
    
    var body: some View {
        
        ZStack {
            Image("Back01")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Text("De estas primeras exploraciones nace la cimática, permitiéndonos observar la belleza subyacente del sonido, que acompaña al impacto que tiene en nuestras emociones, haciéndonos sentir:")
                    .font(.body)
                    .padding(15)
                    .foregroundColor(Color.white)
                ZStack {
                    Image(name)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .cornerRadius(80)
                    Image("Background")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .cornerRadius(80)
                }
                // Imagen de una flecha para ir a la siguiente vista.
                NavigationLink(destination: Happy()) {
                    Image(systemName: "arrowshape.right.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.gray)
                        .frame(width: 50)
                        .padding(.top, 20)
                }
            }
            .onAppear {
                for i in 1...40 {
                    Timer.scheduledTimer(withTimeInterval: 0.10 * times, repeats: false) { timer in
                        name = "A\(String(i))"
                    }
                    times += 1 // Modificamos el contador para que cada ciclo se muestre en un tiempo distinto
                }
                times = 0.0
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
