import SwiftUI

struct ContentView: View {
    
    // Variable de estado que almacena el nombre del frame para la animación.
    @State var name: String = "A1"
    @State var times: Double = 0.0

    var body: some View {
        ZStack {
            Image("Back01")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                ScrollView {
                    Text("""
                    La cimática es el estudio de algo invisible a nuestros ojos de manera cotidiana: la geometría escondida dentro de las vibraciones que genera el sonido. Fue observada por primera vez por el filósofo y músico Alemán Ernst Chladni (1756 - 1827), uno de los padres de la acústica moderna.\n
                    El método clásico consiste en mostrar las formas creadas en la arena sobre un plato metálico, debido a la vibración generada por un arco de violín. Las figuras generadas por este método, se conocen como patrones de Chladni.
                    """)
                    .font(.body)
                        .padding(15)
                        .foregroundColor(Color.white)
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
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Cymatics")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.top, 50)
                }
            }
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
