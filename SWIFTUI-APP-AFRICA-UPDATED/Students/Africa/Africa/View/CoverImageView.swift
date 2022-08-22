//
//  CoverImageView.swift
//  Africa
//
//  Created by Alan Milke on 22/08/22.
//

import SwiftUI

struct CoverImageView: View {
    
    //MARK: PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    var body: some View {
        
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFit()
            }// LOOP            
        } // TAB
        .tabViewStyle(.page)

    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.sizeThatFits)
    }
}
