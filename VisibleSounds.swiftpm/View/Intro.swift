/* Intro.swift --> VisibleSounds. Created by Miguel Torres on 18/04/23. */

import SwiftUI

struct Intro: View {
    
    @State var times: Double = 0.0
    
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
                                .padding(.top, 30)
                            Text("La cimática es el estudio de algo invisible a nuestros ojos: la geometría escondida dentro de las vibraciones que genera el sonido. Ernst Chladni, músico y filósofo Alemán descubrió estas figuras al hacer vibrar un plato metálico con un arco de violín, y las bautizó como patrones de Chladni.")
                            .font(.body)
                                .padding(15)
                                .foregroundColor(Color.white)
                            Image("Violin")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(50)
                        }
                        // Imagen de una flecha para ir a la siguiente vista.
                        NavigationLink(destination: SecondView()) {
                            Image(systemName: "arrowshape.right.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color.gray)
                                .frame(width: 50)
                                .padding(20)
                        }
                    }
            }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Intro()
    }
}
