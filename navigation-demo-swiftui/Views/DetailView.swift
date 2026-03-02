//
//  DetailView.swift
//  navigation-demo-swiftui
//
//  Created by Olena Solovii on 02.03.2026.
//


import SwiftUI

struct DetailView: View {
    
    let item: FoodItem
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(item.icon)
                .font(.system(size: 80))
            
            Text(item.name)
                .font(.largeTitle)
                .bold()
            
            Text(item.category == .fruit ? "🍎 Fruit" : "🥕 Vegetable")
                .font(.title3)
                .foregroundStyle(.secondary)
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}