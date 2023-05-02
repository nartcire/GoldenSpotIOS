//
//  ContentView.swift
//  Review_Berkeley Spots
//
//  Created by Kyoungcheol Kim on 4/27/23.
//

import SwiftUI

struct RatingsView: View {
    @State var review = ""
    @State var rating = 0
    @State private var text = ""
    @State var noiseLevelRating = 0
    @State var seatingRating = 0
    @State var crowdRating = 0

    
    //Word Limit
    let wordLimit = 50
    
    //Colors
    let berkeleyBlue = Color(red: 0/255, green: 50/255, blue: 98/255)
    let californiaGold = Color(red: 253/255, green: 181/255, blue: 21/255)
    
    var body: some View {
        ZStack{
            //Background
            LinearGradient(gradient: Gradient(colors: [berkeleyBlue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            ScrollView{
                VStack{
                    
                    Text("How was everything?")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(californiaGold)
                        .padding(.top, 10.0)
                    
                    TextField("Enter your review here", text: $review)
                        .frame(width: 300.0, height: 200)
                        .background(Color.white)
                        .cornerRadius(8)
                        .lineLimit(nil)
                        .textContentType(.none)
                        .multilineTextAlignment(.leading)
                        .textFieldStyle(.roundedBorder)
                        .padding(.bottom, 10)
                    
                    Text("Describe Your Issues")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(californiaGold)
                        .padding(1)
                    
                    //Ratings
                    Text("Noise Level")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top)
                    HStack {
                        ForEach(1..<6) { number in
                            Image(systemName: number <= noiseLevelRating ? "star.fill" : "star")
                                .foregroundColor(californiaGold)
                                .onTapGesture {
                                    noiseLevelRating = number
                                }
                        }
                    }
                    .padding(1)
                    
                    Text("Crowd")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top)
                    HStack {
                        ForEach(1..<6) { number in
                            Image(systemName: number <= crowdRating ? "star.fill" : "star")
                                .foregroundColor(californiaGold)
                                .onTapGesture {
                                    crowdRating = number
                                }
                        }
                    }
                    .padding(1)
                    
                    Text("Seating")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top)
                    HStack {
                        ForEach(1..<6) { number in
                            Image(systemName: number <= seatingRating ? "star.fill" : "star")
                                .foregroundColor(californiaGold)
                                .onTapGesture {
                                    seatingRating = number
                                }
                        }
                    }
                    .padding(1)
                }
                
                //Submit button
                VStack{
                    Button(action: {
                                // Submit button action
                            print("Submit button tapped!")
                            }) {
                                Text("Submit")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 200, height: 40)
                                    .background(californiaGold)
                                    .cornerRadius(30)
                            }
                            .padding()
                }
            }
        }
    }
}

 struct RatingsView_Previews: PreviewProvider {
     static var previews: some View {
         RatingsView()
    }
 }
 
