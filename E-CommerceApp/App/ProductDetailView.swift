//
//  ProductDetailView.swift
//  E-CommerceApp
//
//  Created by Sévio Basilio Corrêa on 16/06/23.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties

    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 5, content: {
                // Nav Bar
                NavigationBarDetailView()
                    .padding(.horizontal)
//                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.top, geometry.safeAreaInsets.top)
                
                // Header
                HeaderDetailView()
                    .padding(.horizontal)
                
                // Detail Top Part
                TopPartDetailView()
                    .padding(.horizontal)
                
                // Detail Bottom Part
                // Ratings + Sizes
                // Description
                // Quantity + Favourite
                // Add To Cart
                Spacer()
                
            }) //: VStack
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
                    .ignoresSafeArea(.all, edges: .all)
        )
        }
    }
}

// MARK: - Preview

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
