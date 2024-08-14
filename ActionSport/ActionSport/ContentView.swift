//
//  ContentView.swift
//  ActionSport
//
//  Created by apprenant73 on 30/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Screen1Ent()
                .tabItem {
                    Label("Entraînement",
                          systemImage: "figure.highintensity.intervaltraining")
                }
            
            ScreenProfil()
                .tabItem {
                    Label("Profil",
                          systemImage: "person.crop.circle")
                }
            ScreenMessagerie()
                .tabItem {
                    Label("Messagerie",
                          systemImage: "message.circle")
                }
            MapScreen()
                .tabItem {
                    Label("Map",
                          systemImage: "map.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
