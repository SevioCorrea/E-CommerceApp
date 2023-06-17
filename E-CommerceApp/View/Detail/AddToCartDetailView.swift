//
//  AddToCartDetailView.swift
//  E-CommerceApp
//
//  Created by Sévio Basilio Corrêa on 17/06/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - Properties

    // MARK: - Body
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) //: Button
        .padding(15)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue))
        .clipShape(Capsule())
    }
}

// MARK: - Preview

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
