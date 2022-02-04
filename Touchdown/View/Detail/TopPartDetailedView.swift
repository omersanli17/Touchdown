//
//  TopPartDetailedView.swift
//  Touchdown
//
//  Created by omer sanli on 3.02.2022.
//

import SwiftUI

struct TopPartDetailedView: View {
    @EnvironmentObject var shop: Shop
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // PRICE
            VStack(alignment: .leading, spacing: 6){
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }// VSTACK
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            // PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
            
            
        }// HSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        }
    }
}

struct TopPartDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailedView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
