//
//  ContentView.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 20/06/24.
//

import SwiftUI

struct MainView: View {
    @State var coin = 200

    var body: some View {
        Home()
            .tabItem {
                Label("Menu", systemImage: "house")
            }
    }
}

#Preview {
    MainView()
}
