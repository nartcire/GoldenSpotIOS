//
//  FirestoreManager.swift
//  BerkeleySpots
//
//  Created by Eric Tran on 4/24/23.
//

import Foundation
import Firebase

class FirestoreManager: ObservableObject {
    @Published var studySpotList: [StudySpot] = []
    
    func fetchStudySpots() {
        let db = Firestore.firestore()
        
        db.collection("StudySpot").getDocuments() { (querySnapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                for document in querySnapshot!.documents {
                    let data = document.data()
                    let name: String = data["name"] as? String ?? ""
                    let img: String = data["img"] as? String ?? ""
                    let address: String = data["address"] as? String ?? ""
                    let numStars: Int = data["numStars"] as? Int ?? 0
                    let wifi: Bool = data["wifi"] as? Bool ?? false
                    let outlets: Bool = data["outlets"] as? Bool ?? false
                    let foodDrink: Bool = data["foodDrink"] as? Bool ?? false
                    let quietSpace: Bool = data["quietSpace"] as? Bool ?? false
                    let onCampus: Bool = data["onCampus"] as? Bool ?? false
                    let restrooms: Bool = data["restrooms"] as? Bool ?? false
                    let openToPublic: Bool = data["openToPublic"] as? Bool ?? false
                    
                    let studySpot = StudySpot(img: img, locationName: name, locationAddress: address, numStars: numStars, wifi: wifi, outlets: outlets, foodDrink: foodDrink, quietSpace: quietSpace, onCampus: onCampus, restrooms: restrooms, openToPublic: openToPublic)
                    
                    self.studySpotList.append(studySpot)
                }
            }
            
        }
    }
    
    init() {
        fetchStudySpots()
    }
}
