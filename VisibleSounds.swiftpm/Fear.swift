/* Fear.swift --> VisibleSounds. Created by Miguel Torres on 16/04/23. */

import SwiftUI

struct Fear: View {
    var body: some View {
        ZStack {
            Image("Fear")
                .resizable()
                .ignoresSafeArea(.all)
            // Imagen de una flecha para ir a la siguiente vista.
            VStack {
                ScrollView {
                    Text("")
                }
                NavigationLink(destination: SecondView()) {
                    Image(systemName: "arrowshape.right.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.white)
                        .frame(width: 50)
                }
            }
        }
    }
}

struct Fear_Previews: PreviewProvider {
    static var previews: some View {
        Fear()
    }
}
