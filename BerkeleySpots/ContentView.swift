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
        PreferencesView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(FirestoreManager())
    }
}
