//
//  DinoBitesApp.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 20/06/24.
//

import SwiftData
import SwiftUI

@main
struct DinoBitesApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
        .modelContainer(for: FoodItem.self)
    }
}
