import SwiftUI

@available(iOS 16.0, *)
@main
struct VisibleSoundsApp: App {
    var body: some Scene {
        WindowGroup {
            // We create a NavigationStack that contains the main view to be able to navigate between views.
            NavigationStack {
                ContentView()
            }
        }
    }
}
