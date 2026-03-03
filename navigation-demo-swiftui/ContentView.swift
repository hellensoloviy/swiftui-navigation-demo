//
//  ContentView.swift
//  navigation-demo-swiftui
//
//  Created by Olena Solovii on 02.03.2026.
//

import SwiftUI

#Preview {
    ContentView()
}


struct ContentView: View {
    var body: some View {

        TabView {
            
            NavigationStack {
                ListView()
                    .navigationTitle("Foods")
                    .toolbarBackground(.accent, for: .navigationBar) /// will show on scroll
                    .navigationDestination(for: FoodItem.self) { food in
                        DetailView(item: food)
                    }

            }
            .tabItem {
                Label("First", systemImage: "globe")
            }
            
            ImagesGalleryView()
                .tabItem {
                    Label("Images", systemImage: "2.circle")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
        }
            
    }
}

