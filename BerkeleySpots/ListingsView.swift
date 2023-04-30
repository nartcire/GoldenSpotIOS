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
                ForEach(firestoreManager.filteredStudySpotList) { temp in
                    //Listing(img: temp.img, locationName: temp.locationName, locationAddress: temp.locationAddress, numStars: temp.numStars, wifi: temp.wifi, outlets: temp.outlets, foodDrink: temp.foodDrink, quietSpace: temp.quietSpace, onCampus: temp.onCampus, restrooms: temp.restrooms, openToPublic: temp.openToPublic)
                    StudySpotView(studySpotInstance: temp)
                        .padding()
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