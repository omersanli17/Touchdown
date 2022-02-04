//
//  AddtoCardDetailView.swift
//  Touchdown
//
//  Created by omer sanli on 3.02.2022.
//

import SwiftUI

struct AddtoCardDetailView: View {
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add to card".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }// BUTTON
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        
        )
        .clipShape(Capsule())
    }
}

struct AddtoCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddtoCardDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
