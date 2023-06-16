//
//  HeaderDetailView.swift
//  E-CommerceApp
//
//  Created by Sévio Basilio Corrêa on 16/06/23.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - Properties

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }) //: VStack
        .foregroundColor(.white)
    }
}

// MARK: - Preview

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
