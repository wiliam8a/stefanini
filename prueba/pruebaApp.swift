//
//  pruebaApp.swift
//  prueba
//
//  Created by Wiliam Ochoa on 06/07/23.
//

import SwiftUI

@main
struct pruebaApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
