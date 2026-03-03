//
//  OnboardingPageView.swift
//  navigation-demo-swiftui
//
//  Created by Olena Solovii on 03.03.2026.
//

import SwiftUI

struct OnboardingPageView: View {
    
    let imageName: String
    let title: String
    let description: String
    
    let showDoneButton: Bool
    
    let nextAction: () -> Void


    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.mint)
                .frame(height: 250)
            
            Text(title)
                .font(.title)
                .fontWeight(.bold)
            
            Text(description)
                .font(.body)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            
            
            if showDoneButton {
                Button("Let's get started") {
                    nextAction()
                }
                .buttonStyle(.borderedProminent)
                .padding(.top)
                
            } else {
                Button("Next") {
                    nextAction()
                }
                .buttonStyle(.bordered)
                .padding()
            }
        }
        .padding()
    }
}

#Preview("First page") {
    OnboardingPageView(imageName: "lasso.and.sparkles",
                       title: "Discover",
                       description: "Discover new content and stay up to date with thew latest updates!",
                       showDoneButton: false,
                       nextAction: {
        //nothing here
    })
}

#Preview("Last page") {
    OnboardingPageView(imageName: "lasso.and.sparkles",
                       title: "Discover",
                       description: "Discover new content and stay up to date with thew latest updates!",
                       showDoneButton: true,
                       nextAction: {
        //nothing here
    })
}

