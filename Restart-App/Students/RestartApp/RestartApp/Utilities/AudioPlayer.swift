//
//  AudioPlayer.swift
//  RestartApp
//
//  Created by Alan Milke on 15/08/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer? 

func playSound(sound: String, type: String) {
    
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("cannot play the sound file")
        }
    }
}
