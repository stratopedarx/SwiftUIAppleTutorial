//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Sergey Lobanov on 26.10.2021.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        let devicesList = ["iPhone SE (2nd generation)",
                           "iPhone XS Max",
                           "iPad Pro (12.9-inch) (5th generation)"]
        ForEach(devicesList, id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
