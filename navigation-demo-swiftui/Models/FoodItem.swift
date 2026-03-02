//
//  FoodItem.swift
//  navigation-demo-swiftui
//
//  Created by Olena Solovii on 02.03.2026.
//


import SwiftUI

struct FoodItem: Identifiable, Hashable {
    let id = UUID()
    let icon: String
    let name: String
    let category: Category
    
    enum Category {
        case fruit
        case vegetable
    }
}