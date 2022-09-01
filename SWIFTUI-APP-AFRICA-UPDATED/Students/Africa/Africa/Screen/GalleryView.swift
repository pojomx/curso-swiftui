//
//  GalleryView.swift
//  Africa
//
//  Created by Alan Milke on 22/08/22.
//

import SwiftUI

// MARK: PROPERTIES
let animals: [Animal] = Bundle.main.decode("animals.json")

let gridLayout: [GridItem] = [
    GridItem(.flexible()),
    GridItem(.flexible()),
    GridItem(.flexible())
]

struct GalleryView: View {
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                ForEach(animals) { item in 
                    Image(item.image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 1)
                            
                        )
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            MotionAnimationView()
        )
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
