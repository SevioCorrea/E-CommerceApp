//
//  Shop.swift
//  E-CommerceApp
//
//  Created by Sévio Basilio Corrêa on 19/06/23.
//

import Foundation



class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
