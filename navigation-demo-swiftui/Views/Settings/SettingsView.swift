//
//  SettingsView.swift
//  navigation-demo-swiftui
//
//  Created by Olena Solovii on 02.03.2026.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var languageIndex = 0
    private let languages = ["English", "Arabic", "Chinese"]
    
    @State private var shouldHideFavoritesUIOnTheMainList: Bool = false
    @State private var isNotificationEnabled: Bool = false

    
    var body: some View {
        NavigationView {
            Form {

                Section("Preferences") {
                    showFavoritesToggleView
                    enableNotificationToggle
                    
                    //TODO: - check issue with not correct auto leading paddings
                    Picker(selection: $languageIndex,
                           label: Text("Language")) {
                        let count = languages.count
                        ForEach(0..<count, id: \.self) { index in
                            Text(languages[index])
                        }
                    }
                }
                
                Button {
                    //button action here
                } label: {
                    Text("Reset to defaults")
                        .foregroundStyle(.red)
                }
                .accessibilityHint("Reset to defaults button")
                
            }
            .navigationTitle("Settings")
        }

    }
    

//MARK: - Private UI
    
    
    private var showFavoritesToggleView: some View {
        HStack {
            Spacer()
            Toggle(isOn: $shouldHideFavoritesUIOnTheMainList) {
                Text("Hide favorites UI from the films list")
            }
            .onChange(of: shouldHideFavoritesUIOnTheMainList) {
                //nothing here
            }
        }
    }
    
    private var enableNotificationToggle: some View {
        HStack {
            Spacer()
            Toggle(isOn: $isNotificationEnabled) {
                Text("Notifications")
            }
            .onChange(of: isNotificationEnabled) {
                //nothing here
            }
        }
    }
}

#Preview {
    SettingsView()
}
