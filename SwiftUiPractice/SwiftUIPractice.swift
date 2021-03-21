//
//  SwiftUIPractice.swift
//  SwiftUiPractice
//
//  Created by Papon Supamongkonchai on 21/3/2564 BE.
//

import SwiftUI

@main
struct SwiftUIPractice: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
