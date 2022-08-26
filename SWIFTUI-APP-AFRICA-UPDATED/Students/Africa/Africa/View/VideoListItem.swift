//
//  VideoAnimalListView.swift
//  Africa
//
//  Created by Alan Milke on 23/08/22.
//

import SwiftUI

struct VideoListItem: View {
    
    // MARK: - PROPERTIES
    let video: Video
    
    var body: some View {
        HStack (alignment: .center, spacing: 16) {
            
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90)
                    .cornerRadius(9)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }
                
            VStack (alignment: .leading, spacing: 10) {
                
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static let videos: [Video] = Bundle.main.decode("videos.json")

    static var previews: some View {
        VideoListItem(video: videos[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}