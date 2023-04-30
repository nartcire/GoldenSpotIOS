//
//  ContentView.swift
//  cubstart final project
//
//  Created by Claire Meaney on 4/24/23.
//

import SwiftUI

struct StudySpotView: View {
    @State var studySpotInstance: StudySpot
    
    var body: some View {
        //NavigationStack {
            HStack {
                //NavigationLink {
                    //Listing(img: studySpotInstance.img, locationName: studySpotInstance.locationName, locationAddress: studySpotInstance.locationAddress, numStars: studySpotInstance.numStars, wifi: studySpotInstance.wifi, outlets: studySpotInstance.outlets, foodDrink: studySpotInstance.foodDrink, quietSpace: studySpotInstance.quietSpace, onCampus: studySpotInstance.onCampus, restrooms: studySpotInstance.restrooms, openToPublic: studySpotInstance.openToPublic)
                //} label: {
                    Image(studySpotInstance.img).resizable().frame(width: 130, height: 130).aspectRatio(contentMode: .fill).cornerRadius(10)
                //}
                
                VStack {
                    // information about the study spot instance
                    Text(studySpotInstance.locationName).lineLimit(1).minimumScaleFactor(0.5).padding(10)
                    HStack {
                        // TODO: open or closed variable here
                        // star rating view here
                        StarRatingView(studySpotInstance: studySpotInstance)
                        // heart button
                        Button(action:{studySpotInstance.liked.toggle()},
                               label:{Image(studySpotInstance.liked ? "Filled in Heart Image" : "Empty Heart Image").resizable().frame(width:20, height:20)}).frame(width: 20,height: 20)
                    }.padding(10)
                    Text(studySpotInstance.closingTime)
                }
                Spacer()
            }
            .frame(width:330, height:130).background(Color.cyan).cornerRadius(10)
        //}
    }
}

/*
 struct StudySpotView_Previews: PreviewProvider {
 static var previews: some View {
 StudySpotView()
 }
 }
 */
