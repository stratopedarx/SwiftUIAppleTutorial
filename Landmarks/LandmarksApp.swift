//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Sergey Lobanov on 25.10.2021.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
