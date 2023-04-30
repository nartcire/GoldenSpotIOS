//
//  ContentView.swift
//  cubstart final project
//
//  Created by Claire Meaney on 4/24/23.
//

import SwiftUI

struct StarRatingView: View {
    var studySpotInstance: StudySpot
    
    var body: some View {
        HStack {
            ForEach(1...studySpotInstance.numStars, id: \.self) {star in
                Image(systemName: "star.fill")
            }
            if studySpotInstance.numStars < 5 {
                ForEach(studySpotInstance.numStars + 1...5, id: \.self) {star in
                    Image(systemName: "star")
                }
            }
        }
    }
}

/*
 struct StarRatingView_Previews: PreviewProvider {
 static var previews: some View {
 StarRatingView()
 }
 }
 */
