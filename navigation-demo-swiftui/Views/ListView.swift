//
//  ListView.swift
//  navigation-demo-swiftui
//
//  Created by Olena Solovii on 02.03.2026.
//

import SwiftUI


#Preview {
    ListView()
}


struct ListView: View {
    
    let fruits: [FoodItem] = [
        FoodItem(icon: "🍎", name: "Apple", category: .fruit),
        FoodItem(icon: "🍌", name: "Banana", category: .fruit),
        FoodItem(icon: "🍊", name: "Orange", category: .fruit),
        FoodItem(icon: "🍓", name: "Strawberry", category: .fruit)
    ]
    
    let vegetables: [FoodItem] = [
        FoodItem(icon: "🥬", name: "Lettuce", category: .vegetable),
        FoodItem(icon: "🌶️", name: "Pepper", category: .vegetable),
        FoodItem(icon: "🧅", name: "Onion", category: .vegetable),
        FoodItem(icon: "🥕", name: "Carrot", category: .vegetable)
    ]
    
//    let fruits = [
//        ("applelogo", "Apple"),
//        ("leaf.fill", "Banana"),
//        ("circle.fill", "Orange"),
//        ("heart.fill", "Strawberry")
//    ]
//    
//    let vegetables = [
//        ("leaf", "Lettuce"),
//        ("flame.fill", "Pepper"),
//        ("circle", "Onion"),
//        ("bolt.fill", "Carrot")
//    ]
//    
    var body: some View {
        NavigationStack {
            List {
                
                // Fruits Section
                Section(header: Text("🍎 Fruits")) {
                    ForEach(fruits) { item in
                        NavigationLink(value: item) {
                            RowView(item: item)
                        }
                    }
                }
                
                // Vegetables Section
                Section(header: Text("🥕 Vegetables")) {
                    ForEach(vegetables) { item in
                        NavigationLink(value: item) {
                            RowView(item: item)
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Food List")
            .navigationDestination(for: FoodItem.self) { item in
//                DetailView(item: item)
            }
        }
        
    }
}


// MARK: - Model


// MARK: - Row View

