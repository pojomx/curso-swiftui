//
//  VideoListView.swift
//  Africa
//
//  Created by Alan Milke on 22/08/22.
//

import SwiftUI

struct VideoListView: View {
    
    // MARK: - PROPERTIES
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(videos) { video in 
                    NavigationLink(destination: VideoPlayerView(videoSelected: video.id, videoTitle: video.name)) { 
                        VideoListItem(video: video)
                            .padding(.vertical, 8)                        
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { 
                ToolbarItem(placement: .navigationBarTrailing) { 
                    Button { 
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: { 
                        Image(systemName: "arrow.2.squarepath")
                    }

                }
            }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
