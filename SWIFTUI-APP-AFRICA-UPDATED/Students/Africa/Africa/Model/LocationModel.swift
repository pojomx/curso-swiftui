//
//  LocationModel.swift
//  Africa
//
//  Created by Alan Milke on 26/08/22.
//

import Foundation
import MapKit

struct Location: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    
    let latitude: Double
    let longitude: Double
    
    // Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)        
    }
}
