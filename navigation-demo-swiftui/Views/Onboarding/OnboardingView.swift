//
//  OnboardingView.swift
//  navigation-demo-swiftui
//
//  Created by Olena Solovii on 03.03.2026.
//

import SwiftUI

struct OnboardingView: View {
    
    @Binding var showOnboarding: Bool
    
    var body: some View {
        TabView {
            OnboardingPageView(imageName: "figure.mixed.cardio",
                               title: "Welcome",
                               description: "Welcome to the app! Enjoy your time here using amazing features!",
                               showDoneButton: false,
                               nextAction: goNext)
            OnboardingPageView(imageName: "figure.archery",
                               title: "Discover",
                               description: "Discover new content and stay up-to-date with the updates.",
                               showDoneButton: false,
                               nextAction: goNext)
            OnboardingPageView(imageName: "figure.yoga",
                               title: "Connect",
                               description: "Connect with friends and share your experiences with the community.",
                               showDoneButton: false,
                               nextAction: goNext)
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
    
    func goNext() {
        //TODO: - go next
    }
}

#Preview {
    OnboardingView(showOnboarding: .constant(true))
}
