//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Tim Mitra on 2/20/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
  @StateObject private var modelData = ModelData()
  
    var body: some Scene {
        WindowGroup {
            ContentView()
              .environmentObject(modelData)
        }
    }
}
