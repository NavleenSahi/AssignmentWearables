//
//  Game.swift
//  FifaWWC2019
//
//  Created by Navleen Sahi on 30/06/19.
//  Copyright © 2019 Inommation. All rights reserved.
//

import Foundation
import CoreLocation

class Game {
    
    var date: Date?
    var stadium: String = ""
    var city: String = ""
    var latitude: Double = 0.0
    var longitude: Double = 0.0
    var teamA: String = "TBA"
    var teamB: String = "TBA"
    var subscibed = false
    var fifaId = ""
    
    static var dateFormatter = DateFormatter()
    
    init(_ json: [String: Any]) {
        print(json)
        
        Game.dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        if let dateString = json["datetime"] as? String, let date = Game.dateFormatter.date(from: dateString) {
            self.date = date
        }
        
        if let latitude = json["latitude"] as? Double {
            self.latitude = latitude
        }
        
        if let longitude = json["longitude"] as? Double {
            self.longitude = longitude
        }
        
        if let stadium = json["stadium"] as? String {
            self.stadium = stadium
        }
        
        if let teamA = json["teamA"] as? String {
            self.teamA = teamA
        }
        
        if let teamB = json["teamB"] as? String {
            self.teamB = teamB
        }
        
        if let fifaId = json["fifa_id"] as? String {
            self.fifaId = fifaId
        }
        
        if let city = json["city"] as? String {
            self.city = city
        }
    }
}
