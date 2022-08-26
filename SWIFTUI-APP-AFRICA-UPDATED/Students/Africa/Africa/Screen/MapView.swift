//
//  MapView.swift
//  Africa
//
//  Created by Alan Milke on 22/08/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    // MARK: - PROPERTIES
    
    @State private var region: MKCoordinateRegion = {
        var coordinates = CLLocationCoordinate2D(latitude: 6.00286, longitude: 16.4377599)
        var mapZoomLevel =  MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: coordinates, span:mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [Location] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    var body: some View {
        // 1. Bsic Map
        // Map(coordinateRegion: $region)
        // 2. Map with Annotations
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            // A, Pin, Old Style, always static
            // MapPin(coordinate: item.location, tint: .accentColor)
            // B, Marker, new stile
            // MapMarker(coordinate: item.location, tint: .accentColor)
            // C, Custom basic annotation
            MapAnnotation(coordinate: item.location) { 
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
                
            }
        }
    }
}


// MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
