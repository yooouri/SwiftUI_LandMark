//
//  Landmark.swift
//  LandmarkEx
//
//  Created by yuri on 2022/11/10.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinate
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinate: Codable {
        var latitude: Double
        var longitude: Double
    }
}


