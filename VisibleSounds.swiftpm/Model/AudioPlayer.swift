/* AudioPlayer.swift --> VisibleSounds. Created by Miguel Torres on 16/04/23. */

import Foundation
import AVFoundation

class AudioPlayer: ObservableObject {
    // Variable that can be shared between different views.
    @Published var audioPlayer: AVAudioPlayer?
    
    func playS(resourceName: String, resourceExtension: String) {
        // We stop any song.
        stopSound()
        
        guard let url = Bundle.main.url(forResource: resourceName, withExtension: resourceExtension) else {
            print("The sound file could not be found.")
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        } catch let error {
            print("Error playing the file: \(error.localizedDescription)")
        }
    }
    
    func stopSound() {
        audioPlayer?.stop()
        audioPlayer?.currentTime = 0
    }
}
