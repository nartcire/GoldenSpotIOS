//
//  StudySpot.swift
//  BerkeleySpots
//
//  Created by Eric Tran on 4/24/23.
//

import Foundation

class StudySpot: ObservableObject, Identifiable {
    var img: String
    var locationName: String
    var locationAddress: String
    var numStars: Int
    var wifi: Bool
    var outlets: Bool
    var foodDrink: Bool
    var quietSpace: Bool
    var onCampus: Bool
    var restrooms: Bool
    var openToPublic: Bool
    
    init(img: String, locationName: String, locationAddress: String, numStars: Int, wifi: Bool, outlets: Bool, foodDrink: Bool, quietSpace: Bool, onCampus: Bool, restrooms: Bool, openToPublic: Bool) {
        self.img = img
        self.locationName = locationName
        self.locationAddress = locationAddress
        self.numStars = numStars
        self.wifi = wifi
        self.outlets = outlets
        self.foodDrink = foodDrink
        self.quietSpace = quietSpace
        self.onCampus = onCampus
        self.restrooms = restrooms
        self.openToPublic = openToPublic
    }
}
