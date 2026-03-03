//
//  ImagesGalleryView.swift
//  navigation-demo-swiftui
//
//  Created by Olena Solovii on 02.03.2026.
//

import SwiftUI

struct ImagesGalleryView: View {
    let imagesData = ["image-0", "image-1", "image-2", "image-3"]
    
    var body: some View {
        VStack {
            TabView {
                ForEach(imagesData, id: \.self) { imgName in
                    Image(imgName)
                        .resizable()
                    
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
        }
    }
}

#Preview {
    ImagesGalleryView()
}
