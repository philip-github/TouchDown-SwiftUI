//
//  CodableBundleExtention.swift
//  Touchdown
//
//  Created by Philip Al-Twal on 10/19/22.
//

import Foundation

extension Bundle {
    
    func decode<T:Codable>(_ file: String) -> T {
        // FILE PATH URL
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        // DATA
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load data from \(file)")
        }
        // DECODE DATA
        guard let decodedData = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("Failed to decode \(file)")
        }
        //RETURN READY-TO-USE DECODED DATA
        return decodedData
    }
}
