//
//  RowView.swift
//  navigation-demo-swiftui
//
//  Created by Olena Solovii on 02.03.2026.
//


import SwiftUI

struct RowView: View {
    
    let item: FoodItem
    
    var body: some View {
        HStack(spacing: 12) {
            Text(item.icon)
                .font(.system(size: 20))
            
            Text(item.name)
                .font(.headline)
        }
//        .padding(.vertical, 4)
    }
}


