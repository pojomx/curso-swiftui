//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Alan Milke on 26/08/22.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer? {
    
    if let videoURL = Bundle.main.url(forResource: fileName, withExtension: fileFormat) {
        videoPlayer = AVPlayer(url: videoURL)
        videoPlayer?.play()
        return videoPlayer
    }
    return nil
}
