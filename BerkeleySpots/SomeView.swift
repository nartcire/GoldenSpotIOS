//
//  SomeView.swift
//  BerkeleySpots
//
//  Created by Eric Tran on 4/29/23.
//

import SwiftUI

struct SomeView: View {
    @StateObject var allSpots = StudySpotModel()
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(allSpots.filteredData) { location in
                    StudySpotView(studySpotInstance: location)
                    }
                }
            .navigationTitle("Study Spots")
            // when we search in the search bar it binds that value to the variable searchText
            .searchable(text: $searchText)
            .onChange(of: searchText) { newSearch in
                allSpots.search(with: newSearch)
            }
            .onAppear {
                allSpots.search()
            }
        }
    }
}

struct SomeView_Previews: PreviewProvider {
    static var previews: some View {
        SomeView()
    }
}
