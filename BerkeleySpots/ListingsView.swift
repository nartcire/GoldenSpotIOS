//
//  ListingsView.swift
//  BerkeleySpots
//
//  Created by Eric Tran on 4/30/23.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore

struct ListingsView: View {
    @EnvironmentObject var firestoreManager: FirestoreManager
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(firestoreManager.filteredStudySpotList) { studySpotInstance in
                    NavigationLink {
                        Listing(img: studySpotInstance.img, locationName: studySpotInstance.locationName, locationAddress: studySpotInstance.locationAddress, numStars: studySpotInstance.numStars, wifi: studySpotInstance.wifi, outlets: studySpotInstance.outlets, foodDrink: studySpotInstance.foodDrink, quietSpace: studySpotInstance.quietSpace, onCampus: studySpotInstance.onCampus, restrooms: studySpotInstance.restrooms, openToPublic: studySpotInstance.openToPublic)
                    } label: {
                        HStack {
                            Image(studySpotInstance.img).resizable().frame(width: 130, height: 130).aspectRatio(contentMode: .fill).cornerRadius(10)
                            
                            Spacer()
                            
                            VStack {
                                Spacer()
                                
                                Text(studySpotInstance.locationName)
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.5)
                                    .padding(10)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.white)
                                
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
                                .foregroundColor(.yellow)
                                
                                Spacer()
                                
                                Text("Closes at " + studySpotInstance.closingTime)
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                
                                Spacer()
                            }
                            
                            Spacer()
                        }
                        .frame(width:330, height:130).background(Color("BerkeleyBlue")).cornerRadius(10)
                    }
                }
            }
            .navigationTitle("Study Spots")
            .searchable(text: $searchText)
            .onChange(of: searchText) { newSearch in
                firestoreManager.search(with: newSearch)
            }
        }
    }
}

struct ListingsView_Previews: PreviewProvider {
    static var previews: some View {
        ListingsView()
            .environmentObject(FirestoreManager())
    }
}
