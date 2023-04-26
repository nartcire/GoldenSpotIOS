//
//  BerkeleySpotsApp.swift
//  BerkeleySpots
//
//  Created by Eric Tran on 4/19/23.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct YourApp: App {
  // register app delegate for Firebase setup
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
  @StateObject var firestoreManager = FirestoreManager()

  var body: some Scene {
    WindowGroup {
      NavigationView {
        ContentView()
              .environmentObject(firestoreManager)
      }
    }
  }
}
