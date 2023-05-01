//
//  StudySpotModel.swift
//  cubstart final project
//
//  Created by Claire Meaney on 4/26/23.
//

import Foundation

final class StudySpotModel: ObservableObject {
    
    private(set) var data: [StudySpot] = [
        StudySpot(id: UUID(), name: "Moffit Library (5th Floor)", rating: 1, image:"Moffitt Library Image",closingTime: "Closes at 10:00 PM"
            // TODO: instantiate open or closed variable
        ),
        StudySpot(id: UUID(), name: "Music Library", rating: 5, image:"Music Library Image",closingTime: "Closes at 5:00 PM"
            // TODO: instantiate open or closed variable
        ),
        StudySpot(id: UUID(), name: "Cafenated Coffee Co.", rating: 4, image:"Cafenated Coffee Co. Image",closingTime: "Closes at 7:00 PM"
            // TODO: instantiate open or closed variable
        ),
        StudySpot(id: UUID(), name: "East Asian Library", rating: 3, image:"East Asian Image",closingTime: "Closes at 5:00 PM"
            // TODO: instantiate open or closed variable
        ),
        StudySpot(id: UUID(), name: "Cafe Milano", rating: 1, image:"Cafe Milano Image",closingTime: "Closes at 10:00 PM"
            // TODO: instantiate open or closed variable
        )
    ]
        
    @Published var filteredData = [StudySpot]()
    
    func search(with searchText: String = "") {
        filteredData = searchText.isEmpty ? data : data.filter {$0.name.contains(searchText)}
    }
    
}
