//
//  Listing.swift
//  BerkeleySpots
//
//  Created by Eric Tran on 4/19/23.
//

import SwiftUI

struct Listing: View {
    var img: String
    var locationName: String
    var locationAddress: String
    var numStars: Int
    var wifi: Bool
    var outlets: Bool
    var foodDrink: Bool
    var quietSpace: Bool
    var onCampus: Bool
    var restrooms: Bool
    var openToPublic: Bool
    
    var numGoldStarsRange: Range<Int> {
        return (0..<numStars)
    }
    
    var numGreyStarsRange: Range<Int> {
        return (0..<(5-numStars))
    }
    
    var attrivuteArr: [String] = ["Wifi", "Outlets", "Food/Drink", "Quiet Space", "On Campus", "Restrooms", "Public"]
    
    var booleanArr: [Bool] {
        return [wifi, outlets, foodDrink, quietSpace, onCampus, restrooms, openToPublic]
    }
    
    @State private var goesToReview: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BerkeleyBlue")
                    .ignoresSafeArea()
                
                GeometryReader { geometry in
                    ScrollView {
                        VStack {
                            Image(img)
                                .resizable()
                                .ignoresSafeArea()
                                .aspectRatio(contentMode: .fit)
                            
                            Text(locationName)
                                .foregroundColor(.white)
                                .font(.system(size: 28))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 1.0)
                            
                            Text(locationAddress)
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 6.0)
                            
                            HStack {
                                ForEach(numGoldStarsRange, id: \.self) { num in
                                    Image(systemName: "star.fill")
                                }
                                
                                ForEach(numGreyStarsRange, id: \.self) {num in
                                    Image(systemName: "star")
                                }
                            }
                            .foregroundColor(.yellow)
                            
                            Divider()
                                .frame(height: 2)
                                .overlay(.white)
                                .padding([.top, .leading, .trailing])
                            
                            Text("General Information")
                                .foregroundColor(.white)
                                .font(.system(size: 26))
                                .fontWeight(.bold)
                                .padding(.bottom, 5.0)
                            
                            HStack(alignment: .top) {
                                
                                Spacer()
                                
                                VStack(alignment: .leading) {
                                    ForEach((0..<5), id: \.self) { index in
                                        HStack {
                                            if booleanArr[index] {
                                                Image(systemName: "checkmark")
                                                    .foregroundColor(.white)
                                                    .fontWeight(.heavy)
                                            } else {
                                                Image(systemName: "xmark")
                                                    .foregroundColor(.white)
                                                    .fontWeight(.heavy)
                                            }
                                            
                                            Text(attrivuteArr[index])
                                                .fontWeight(.medium)
                                                .foregroundColor(.white)
                                                .font(.system(size: 20))
                                        }
                                        .padding(.bottom, 1.0)
                                    }
                                }
                                
                                Spacer()
                                
                                VStack(alignment: .leading) {
                                    ForEach((5..<7), id: \.self) { index in
                                        HStack() {
                                            if booleanArr[index] {
                                                Image(systemName: "checkmark")
                                                    .foregroundColor(.white)
                                                    .fontWeight(.heavy)
                                            } else {
                                                Image(systemName: "xmark")
                                                    .foregroundColor(.white)
                                                    .fontWeight(.heavy)
                                            }
                                            
                                            Text(attrivuteArr[index])
                                                .fontWeight(.medium)
                                                .foregroundColor(.white)
                                                .font(.system(size: 20))
                                        }
                                        .padding(.bottom, 1.0)
                                    }
                                }
                                
                                Spacer()
                            }
                            
                            Divider()
                                .frame(height: 2)
                                .overlay(.white)
                                .padding([.top, .leading, .trailing])
                            
                            Text("Reviews")
                                .foregroundColor(.white)
                                .font(.system(size: 26))
                                .fontWeight(.bold)
                                .padding(.bottom, 50)
                            
                            NavigationLink(
                                destination: RatingsView(),
                                isActive: $goesToReview) {
                                Button(action: { goesToReview = true }) {
                                    Text("Write a review!")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: 200, height: 40)
                                        .background(Color("Mustard"))
                                        .cornerRadius(30)
                                }
                            }
                        }
                    }
                }
                .ignoresSafeArea()
            }
        }
    }
}

struct Listing_Previews: PreviewProvider {    
    static var previews: some View {
        Listing(img: "Moffit_Library", locationName: "Moffit Library (5th Floor)", locationAddress: "350 Moffit Library, Berkeley, CA 94720", numStars: 1, wifi: true, outlets: true, foodDrink: true, quietSpace: true, onCampus: true, restrooms: true, openToPublic: false)
    }
}
