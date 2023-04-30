//
//  ContentView.swift
//  FinalProject
//
//  Created by Michael Wu on 4/24/23.
//

import SwiftUI

struct PreferencesView: View {
    @State var title3: String = "Quiet +"
    
    @State var title4: String = "Food and Drinks +"

    @State var title1: String = "Library +"
    
    @State var title2: String = "Printing +"

    @State var title5: String = "Outdoors +"

    
    @State var title6: String = "Cafe +"

    
    @State var title7: String = "Indoors +"
    
    @State var title8: String = "Late Hours +"
    
    @State var title9: String = "Outlet +"

    
    @State var title10: String = "Wifi +"


    @State var color1 = Color("Mid")

    @State var color2 = Color("Mid")

    @State var color3 = Color("Mid")

    @State var color4 = Color("Mid")

    @State var color5 = Color("Mid")

    @State var color6 = Color("Mid")

    @State var color7 = Color("Mid")

    @State var color8 = Color("Mid")


    @State var color9 = Color("Mid")
    
    @State var color10 = Color("Mid")



    var body: some View {
        
        ZStack{
            Color.accentColor
            VStack {
                Text("What are your study").font(.system(size: 30)).frame(maxWidth: .infinity, alignment: .center).foregroundColor(.white)
                Text("spot preferences?").font(.system(size: 30)).frame(maxWidth: .infinity, alignment: .center).foregroundColor(.white)
                
                Spacer().frame(height: 10)

                    
                Text("We'll recommend some places").foregroundColor(.white).frame(maxWidth: .infinity, alignment: .center)

                Text("according to what you like.").foregroundColor(.white).frame(maxWidth: .infinity, alignment: .center)

                Spacer().frame(height: 70)
                
                Group{
                    HStack{
                        Button(action: {
                            if (self.color1 == Color("Mid")) {
                                self.title1 = "Library"
                                self.color1 = Color("Light")}
                            else {
                                self.color1 = Color("Mid")
                                self.title1 = "Library +"
                            }
                        },label: {
                            Text(title1)                    .foregroundColor(.white)
                        })
                        .frame(width: 98, height: 32)
                        .background(color1
                            .cornerRadius(15))
                        
                        Button(action: {
                            if (self.color2 == Color("Mid")) {
                                self.title2 = "Printing"
                                self.color2 = Color("Light")}
                            else {
                                self.color2 = Color("Mid")
                                self.title2 = "Printing +"
                            }
                        },label: {
                            Text(title2)                    .foregroundColor(.white)
                        })
                        .frame(width: 103, height: 32)
                        .background(color2
                            .cornerRadius(15))
                    }
            
                    HStack{
                        Button(action: {
                            if (self.color3 == Color("Mid")) {
                                self.title3 = "Quiet"
                                self.color3 = Color("Light")}
                            else {
                                self.color3 = Color("Mid")
                                self.title3 = "Quiet +"
                            }
                        },label: {
                            Text(title3)                    .foregroundColor(.white)
                        })
                        .frame(width: 84, height: 32)
                        .background(color3
                            .cornerRadius(15))
                        
                        Button(action: {
                            if (self.color4 == Color("Mid")) {
                                self.title4 = "Food and Drinks"
                                self.color4 = Color("Light")}
                            else {
                                self.color4 = Color("Mid")
                                self.title4 = "Food and Drinks +"
                            }
                        },label: {
                            Text(title4)                    .foregroundColor(.white)
                        })
                        .frame(width: 172, height: 32)
                        .background(color4
                            .cornerRadius(15))
                    }
                        
                    HStack{
                        Button(action: {
                            if (self.color5 == Color("Mid")) {
                                self.title5 = "Outdoors"
                                self.color5 = Color("Light")}
                            else {
                                self.color5 = Color("Mid")
                                self.title5 = "Outdoors +"
                            }
                        },label: {
                            Text(title5)                    .foregroundColor(.white)
                        })
                        .frame(width: 119, height: 32)
                        .background(color5
                            .cornerRadius(15))
                        
                        Button(action: {
                            if (self.color6 == Color("Mid")) {
                                self.title6 = "Cafe"
                                self.color6 = Color("Light")}
                            else {
                                self.color6 = Color("Mid")
                                self.title6 = "Cafe +"
                            }
                        },label: {
                            Text(title6)                    .foregroundColor(.white)
                        })
                        .frame(width: 78, height: 32)
                        .background(color6
                            .cornerRadius(15))
                    }
                    
                    HStack{
                        Button(action: {
                            if (self.color7 == Color("Mid")) {
                                self.title7 = "Indoors"
                                self.color7 = Color("Light")}
                            else {
                                self.color7 = Color("Mid")
                                self.title7 = "Indoors +"
                            }
                        },label: {
                            Text(title7)                    .foregroundColor(.white)
                        })
                        .frame(width: 106, height: 32)
                        .background(color7
                            .cornerRadius(15))
                        
                        Button(action: {
                            if (self.color8 == Color("Mid")) {
                                self.title8 = "Late Hours"
                                self.color8 = Color("Light")}
                            else {
                                self.color8 = Color("Mid")
                                self.title8 = "Late Hours +"
                            }
                        },label: {
                            Text(title8)                    .foregroundColor(.white)
                        })
                        .frame(width: 128, height: 32)
                        .background(color8
                            .cornerRadius(15))
                    }
                    
                    HStack{
                        Button(action: {
                            if (self.color9 == Color("Mid")) {
                                self.title9 = "Outlets"
                                self.color9 = Color("Light")}
                            else {
                                self.color9 = Color("Mid")
                                self.title9 = "Outlet +"
                            }
                        },label: {
                            Text(title9)                    .foregroundColor(.white)
                        })
                        .frame(width: 93, height: 32)
                        .background(color9
                            .cornerRadius(15))
                        
                        Button(action: {
                            if (self.color10 == Color("Mid")) {
                                self.title10 = "Wifi"
                                self.color10 = Color("Light")}
                            else {
                                self.color10 = Color("Mid")
                                self.title10 = "Wifi +"
                            }
                        },label: {
                            Text(title10)                    .foregroundColor(.white)
                        })
                        .frame(width: 70, height: 32)
                        .background(color10
                            .cornerRadius(15))
                    }
                }
                Spacer().frame(height: 80)
                Button("Continue") {
                }
                .foregroundColor(.black)
                .frame(width: 100, height: 36)
                .background(Color("Mustard")
                    .cornerRadius(15))
            }
    
        }
        .padding()
    }
}

struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView()
    }
}
