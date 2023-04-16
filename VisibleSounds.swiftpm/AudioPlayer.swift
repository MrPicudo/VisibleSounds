/* AudioPlayer.swift --> VisibleSounds. Created by Miguel Torres on 16/04/23. */

import Foundation
import AVFoundation

class AudioPlayer {
    var audioPlayer: AVAudioPlayer?
    
    func playS(resourceName: String, resourceExtension: String) {
            guard let url = Bundle.main.url(forResource: resourceName, withExtension: resourceExtension) else {
                print("No se pudo encontrar el archivo de sonido.")
                return
            }

            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.prepareToPlay()
                audioPlayer?.play()
            } catch let error {
                print("Error al reproducir el sonido: \(error.localizedDescription)")
            }
        }
}
