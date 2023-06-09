//
//  SwiftUIView.swift
//  FinalProject
//
//  Created by Michael Wu on 4/26/23.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var firestoreManager: FirestoreManager
    @State private var username = ""
    @State private var password = ""

    
    var body: some View {
        NavigationStack {
            ZStack{
                Color("BerkeleyBlue")
                    .ignoresSafeArea()
                VStack {
                    
                    Spacer()
                    
                    Image("BerkeleyBear")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250)
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width:300, height:38)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(15)
                    Spacer().frame(height: 10)
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width:300, height:38)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(15)
                    
                    Spacer().frame(height: 30)
                    
                    NavigationLink {
                        ListingsView()
                    } label: {
                        Text("Login")
                    }
                    .foregroundColor(.black)
                    .frame(width:80, height: 40)
                    .background(Color("Mustard")
                    .cornerRadius(12))
                    
                    Spacer()
                    
                    Text("Don't have an account?")
                        .foregroundColor(.white)
                    
                    Button("Sign Up") {
                    }
                    .foregroundColor(.white)
                    .frame(width: 100, height: 18)
                    .underline()
                        
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(FirestoreManager())
    }
}

