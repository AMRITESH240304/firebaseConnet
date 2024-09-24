//
//  firebaseConnetApp.swift
//  firebaseConnet
//
//  Created by admin49 on 20/09/24.
//

import SwiftUI
import FirebaseCore

@main
struct firebaseConnetApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
