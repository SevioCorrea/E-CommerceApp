//
//  CategoryModel.swift
//  E-CommerceApp
//
//  Created by Sévio Basilio Corrêa on 14/06/23.
//

import Foundation



struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
