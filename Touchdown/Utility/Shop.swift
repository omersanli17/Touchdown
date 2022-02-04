//
//  Shop.swift
//  Touchdown
//
//  Created by omer sanli on 3.02.2022.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
