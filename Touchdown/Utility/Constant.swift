//
//  Constant.swift
//  Touchdown
//
//  Created by omer sanli on 28.01.2022.
//

import SwiftUI


// DATA
let players : [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

// COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)
let sampleProduct: Product = products[0]


// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing) , count: 2)
}


// UX

let feedback = UIImpactFeedbackGenerator(style: .medium)

// API

// IMAGE

// FONT

// STRING

// MISC


