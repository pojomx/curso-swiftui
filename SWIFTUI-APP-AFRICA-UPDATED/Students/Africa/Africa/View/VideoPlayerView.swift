//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Alan Milke on 26/08/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    // MARK: - PROPERTIES
    var videoSelected: String
    var videoTitle: String
    
    var videoFormat: String = "mp4"
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: videoFormat)) {
                //Text(videoTitle)
            
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 32)
                , alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(videoTitle)
    }
}

// MARK: - PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
