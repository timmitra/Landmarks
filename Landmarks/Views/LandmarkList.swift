//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tim Mitra on 2/20/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
      List(landmarks, id: \.id) { landmark in
        LandmarkRow(landmark: landmark)
      }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
