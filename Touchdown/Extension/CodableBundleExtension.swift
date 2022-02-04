//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by omer sanli on 30.01.2022.
//

import Foundation

extension Bundle{
    func decode <T: Codable>(_ file: String) -> T{
        // Locate the json
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate bundle file")
        }
        // Create property for data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load bundle")
        }
        // Create decoder
        let decoder = JSONDecoder()
        // Decodede data
        guard let decodedData = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode data")
        }
        // return data
        return decodedData
    }
}

