//
//  ItemView.swift
//  navigation-demo-swiftui
//
//  Created by Olena Solovii on 13.04.2026.
//


import SwiftUI

struct ItemView: View {
    
    let item: FoodItem
    
    var body: some View {
        VStack(spacing: 12) {
            Text(item.icon)
                .font(.system(size: 20))
            
            Text(item.name)
                .font(.headline)
        }
        .padding()
        .frame(width: 100, height: 100)
        .background(.ultraThinMaterial)
        .clipShape(.rect(corners: .concentric(minimum: .fixed(16)), isUniform: true))

    }
}
