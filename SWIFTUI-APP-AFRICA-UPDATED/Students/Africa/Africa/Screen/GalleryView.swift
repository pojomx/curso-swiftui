//
//  GalleryView.swift
//  Africa
//
//  Created by Alan Milke on 22/08/22.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(.vertical) {
            Text("Gallery")
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
