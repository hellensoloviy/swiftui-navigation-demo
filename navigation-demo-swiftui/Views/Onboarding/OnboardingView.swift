//
//  OnboardingView.swift
//  navigation-demo-swiftui
//
//  Created by Olena Solovii on 03.03.2026.
//

import SwiftUI

struct OnboardingView: View {
    
    @Binding var showOnboarding: Bool
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            OnboardingPageView(imageName: "figure.mixed.cardio",
                               title: "Welcome",
                               description: "Welcome to the app! Enjoy your time here using amazing features!",
                               showDoneButton: false,
                               nextAction: goNext)
            .tag(0)
            OnboardingPageView(imageName: "figure.archery",
                               title: "Discover",
                               description: "Discover new content and stay up-to-date with the updates.",
                               showDoneButton: false,
                               nextAction: goNext)
            .tag(1)

            OnboardingPageView(imageName: "figure.yoga",
                               title: "Connect",
                               description: "Connect with friends and share your experiences with the community.",
                               showDoneButton: true,
                               nextAction: goNext)
            .tag(2)

        }
        .onChange(of: selection, { oldValue, newValue in
            /// here put an action if needed
        })
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
    
    func goNext() {
        withAnimation {
            if selection < 2 {
                selection += 1
            } else {
                showOnboarding = false
            }
        }
        
    }
}

#Preview {
    OnboardingView(showOnboarding: .constant(true))
}
