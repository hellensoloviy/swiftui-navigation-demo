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
        FoodItem(icon: "🥕", name: "Carrot", category: .vegetable),
        FoodItem(icon: "🥦", name: "Broccoli", category: .vegetable),
        FoodItem(icon: "🥒", name: "Cucumber", category: .vegetable),
        FoodItem(icon: "🍆", name: "Eggplant", category: .vegetable),
        FoodItem(icon: "🌽", name: "Corn", category: .vegetable),
        FoodItem(icon: "🍅", name: "Tomato", category: .vegetable),
        FoodItem(icon: "🧄", name: "Garlic", category: .vegetable),
        FoodItem(icon: "🥔", name: "Potato", category: .vegetable),
        FoodItem(icon: "🍠", name: "Sweet Potato", category: .vegetable),
        FoodItem(icon: "🥑", name: "Avocado", category: .vegetable),
        FoodItem(icon: "🫑", name: "Bell Pepper", category: .vegetable),
        FoodItem(icon: "🥗", name: "Mixed Greens", category: .vegetable)
    ]
    
    private let rows = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100))

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

                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows, spacing: 12) {
                        ForEach(vegetables) { item in
                            NavigationLink(value: item) {
                                ItemView(item: item)
                            }
                        }
                    }
                    .padding(.horizontal, 1)
                }
                .frame(height: 300)

            }
        }
        .navigationDestination(for: FoodItem.self) { item in
            DetailView(item: item)
        }
        .listStyle(.insetGrouped)

    }
        
}

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




