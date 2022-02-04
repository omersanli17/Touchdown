//
//  HeaderDetailedView.swift
//  Touchdown
//
//  Created by omer sanli on 3.02.2022.
//

import SwiftUI

struct HeaderDetailedView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
            
                .font(.largeTitle)
                .fontWeight(.black)
        } // VSTACK
        .foregroundColor(.white)
        
    }
}

struct HeaderDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailedView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
