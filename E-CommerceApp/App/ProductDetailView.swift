//
//  ProductDetailView.swift
//  E-CommerceApp
//
//  Created by Sévio Basilio Corrêa on 16/06/23.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop

    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 5, content: {
                // Nav Bar
                NavigationBarDetailView()
                    .padding(.horizontal)
//                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.top, geometry.safeAreaInsets.top)
                    .padding(.top, 50)
                
                // Header
                HeaderDetailView()
                    .padding(.horizontal)
                
                // Detail Top Part
                TopPartDetailView()
                    .padding(.horizontal)
                    .zIndex(1)
                
                // Detail Bottom Part
                VStack(alignment: .center, spacing: 0, content: {
                    // Ratings + Sizes
                    RatingsSizesDetailView()
                        .padding(.top, -25)
                        .padding(.bottom, 10)
                    
                    // Description
                    ScrollView(.vertical, showsIndicators: false, content: {
                        Text(shop.selectedProduct?.description ?? sampleProduct.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                    }) //: Scroll
                    
                    // Quantity + Favourite
                    QuantityFavouriteDetailView()
                        .padding(.vertical, 10)
                    
                    // Add To Cart
                    AddToCartDetailView()
                        .padding(.bottom, 20)
                }) //: VStack
                .padding(.horizontal)
                .background(Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
                )
                
                
            }) //: VStack
            .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
                    .ignoresSafeArea(.all, edges: .all)
        )
        }
    }
}

// MARK: - Preview

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
