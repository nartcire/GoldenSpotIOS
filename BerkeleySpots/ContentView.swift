//
//  ContentView.swift
//  BerkeleySpots
//
//  Created by Eric Tran on 4/19/23.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore

struct ContentView: View {
    @EnvironmentObject var firestoreManager: FirestoreManager
    
    var body: some View {
        /*
        VStack {
            NavigationStack {
                ForEach(firestoreManager.studySpotList) { temp in
                    NavigationLink {
                        Listing(img: temp.img, locationName: temp.locationName, locationAddress: temp.locationAddress, numStars: temp.numStars, wifi: temp.wifi, outlets: temp.outlets, foodDrink: temp.foodDrink, quietSpace: temp.quietSpace, onCampus: temp.onCampus, restrooms: temp.restrooms, openToPublic: temp.openToPublic)
                    } label: {
                        Text(temp.locationName)
                    }
                    .padding()
                }
            }
        }
        */
        ListingsView(firestoreManager: _firestoreManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(FirestoreManager())
    }
}
