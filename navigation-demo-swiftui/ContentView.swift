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
            
            ListView()
                .tabItem {
                    Label("First", systemImage: "globe")
                }
            
            Text("Second")
                .tabItem {
                    Label("Second", systemImage: "2.circle")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
        }
            
    }
}

