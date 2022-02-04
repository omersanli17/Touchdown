//
//  CategoryModel.swift
//  Touchdown
//
//  Created by omer sanli on 1.02.2022.
//

import Foundation

struct Category: Codable,Identifiable{
    let id: Int
    let name: String
    let image: String
}
