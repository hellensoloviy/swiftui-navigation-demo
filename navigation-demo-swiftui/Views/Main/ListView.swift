//
//  ListView.swift
//  navigation-demo-swiftui
//
//  Created by Olena Solovii on 02.03.2026.
//

import SwiftUI


#Preview {
    NavigationStack {
        ListView()
    }
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
 
    var body: some View {
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
        .navigationDestination(for: FoodItem.self) { item in
            DetailView(item: item)
        }
        .listStyle(.insetGrouped)

    }
        
}




