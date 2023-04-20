import SwiftUI

struct ContentView: View {
    
    @StateObject var audioPlayer = AudioPlayer()
    
    var body: some View {
        // We create a TabView to handle different tabs in our project.
        TabView {
            // First tab.
            AboutMe()
                .environmentObject(audioPlayer)
                .tabItem {
                    Label("About me", systemImage: "person")
                }
            
            // Second tab
            Intro()
                .environmentObject(audioPlayer)
                .tabItem {
                    Label("Visible sounds", systemImage: "music.note.tv.fill")
                }
            
            // Third tab.
            Example()
                .environmentObject(audioPlayer)
                .tabItem {
                    Label("Forms", systemImage: "waveform.path.ecg.rectangle.fill")
                }
            
            // Fourth tab.
            Game(form: form)
                .environmentObject(audioPlayer)
                .tabItem {
                    Label("Game", systemImage: "gamecontroller")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let audioPlayer = AudioPlayer()
    static var previews: some View {
        ContentView()
            .environmentObject(audioPlayer)
    }
}
