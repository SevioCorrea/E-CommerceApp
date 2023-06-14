//
//  CodableBundleExtension.swift
//  E-CommerceApp
//
//  Created by Sévio Basilio Corrêa on 14/06/23.
//

import Foundation



extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the JSON File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in Bundle.")
        }
        
        // 2. Create a Property for the Data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from Bundle.")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a Property for the decoded Data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from Bundle.")
        }
        
        // 5. Return the ready-to-use Data
        return decodedData
    }
}
