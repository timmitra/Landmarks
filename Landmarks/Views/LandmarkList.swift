//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tim Mitra on 2/20/21.
//

import SwiftUI

struct LandmarkList: View {
  @State private var showFavoritesOnly = false
  
  var filteredLandmarks: [Landmark] {
    landmarks.filter { landmark in
      (!showFavoritesOnly || landmark.isFavorite)
    }
  }
  
    var body: some View {
      NavigationView {
        List {
          Toggle(isOn: $showFavoritesOnly) {
            Text("Favorites Only")
          }
          ForEach(filteredLandmarks) { landmark in
            NavigationLink(
              destination: LandmarkDetail(landmark: landmark)) {
                LandmarkRow(landmark: landmark)
            }
          }
          .navigationTitle("Landmarks")
        }
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
      ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
        LandmarkList()
          .previewDevice(PreviewDevice(rawValue: deviceName))
          .previewDisplayName(deviceName)
      }
    }
}
