//
//  ContentView.swift
//  E-CommerceApp
//
//  Created by Sévio Basilio Corrêa on 12/06/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
//    let keyWindow = UIApplication.shared.connectedScenes
//        .filter({$0.activationState == .foregroundActive})
//        .compactMap({$0 as? UIWindowScene})
//        .first?.windows
//        .filter({$0.isKeyWindow}).first
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
    //                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    //                    .padding(.top, keyWindow?.safeAreaInsets.top)
                        .padding(.top, geometry.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    Spacer()
                    
                    FooterView()
                        .padding(.horizontal)
                } //: VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } //: ZStack
            .ignoresSafeArea(.all, edges: .top)
        }
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
