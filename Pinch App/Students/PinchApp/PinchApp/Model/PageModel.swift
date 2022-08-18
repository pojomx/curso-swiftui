//
//  PageModel.swift
//  PinchApp
//
//  Created by Alan Milke on 17/08/22.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
