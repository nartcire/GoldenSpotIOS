//
//  ContentView.swift
//  cubstart final project
//
//  Created by Claire Meaney on 4/24/23.
//

import SwiftUI

struct StudySpot: Identifiable {
    var id: UUID
    let name: String
    var rating: Int
    var image: String
    var closingTime: String
    var liked = false
    // TODO: declare open or closed variable
}

struct StarRatingView: View {
    var studySpotInstance: StudySpot
    
    var body: some View {
        HStack {
            ForEach(1...studySpotInstance.rating, id: \.self) {star in
                Image(systemName: "star.fill").foregroundColor(.white)
            }
            if studySpotInstance.rating < 5 {
                ForEach(studySpotInstance.rating + 1...5, id: \.self) {star in
                    Image(systemName: "star").foregroundColor(.white)
                }
            }
        }
    }
}

struct StudySpotView: View {
    @State var studySpotInstance: StudySpot
    
    var body: some View {
        HStack {
            Image(studySpotInstance.image).resizable().frame(width: 130, height: 130).aspectRatio(contentMode: .fill).cornerRadius(10)
            VStack {
                // information about the study spot instance
                Text(studySpotInstance.name).lineLimit(1).minimumScaleFactor(0.5).padding(10)
                HStack {
                    // TODO: open or closed variable here
                    // star rating view here
                    starRatingView(studySpotInstance: studySpotInstance)
                    // heart button
                    Button(action:{studySpotInstance.liked.toggle()},
                           label:{Image(studySpotInstance.liked ? "Filled in Heart Image" : "Empty Heart Image").resizable().frame(width:20, height:20).foregroundColor(Color.white)}).frame(width: 20,height: 20)
                }.padding(10)
                Text(studySpotInstance.closingTime).foregroundColor(.white)
            }
            Spacer()
        }.frame(width:330, height:130).background(CustomColors.darkBlue).cornerRadius(10)
    }
}

struct ContentView: View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
