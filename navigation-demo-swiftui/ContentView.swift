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
    
    @AppStorage("showOnboarding") private var showOnboarding: Bool = true
    
    var body: some View {

        ZStack {
            if showOnboarding {
                OnboardingView(showOnboarding: $showOnboarding)
                    .background(.white)
                    .transition(.move(edge: .bottom))

            } else {
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
 
    }
}

