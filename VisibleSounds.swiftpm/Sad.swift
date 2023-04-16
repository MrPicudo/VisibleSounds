/* Sad.swift --> VisibleSounds. Created by Miguel Torres on 16/04/23. */

import SwiftUI

struct Sad: View {
    var body: some View {
        ZStack {
            Image("Sadness")
                .resizable()
                .ignoresSafeArea(.all)
            // Imagen de una flecha para ir a la siguiente vista.
            VStack {
                ScrollView {
                    Text("")
                }
                NavigationLink(destination: Anger()) {
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

struct Sad_Previews: PreviewProvider {
    static var previews: some View {
        Sad()
    }
}
