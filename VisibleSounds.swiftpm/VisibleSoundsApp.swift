import SwiftUI

@available(iOS 16.0, *)
@main
struct VisibleSoundsApp: App {
    var body: some Scene {
        WindowGroup {
            // Creamos un NavigationStack que contenga a la vista principal para poder desplazarnos entre vistas.
            NavigationStack {
                ContentView()
            }
        }
    }
}
