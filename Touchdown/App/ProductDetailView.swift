//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by omer sanli on 3.02.2022.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTY
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            // NAVBAR
            NavigationBarDetailedView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // HEADER
           HeaderDetailedView()
                .padding(.horizontal)
            // DETAIL TOP PART
            
            TopPartDetailedView()
                .padding(.horizontal)
                .zIndex(1)
            
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0){
                
            // RATING + SIZES
                RatingSizesDetailedView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
            // DESCRIPTON
                ScrollView(.vertical, showsIndicators: false){
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }// SCROLL
                
            // QUANTITY + FAVORITE
                
                QuantityFavouriteDetailedView()
                    .padding(.vertical, 10)
                
            // ADD TO CART
                AddtoCardDetailView()
                
                
            Spacer()
            }// VSTACK
            .padding(.horizontal)
            .background(Color.white
                            .clipShape(CustomShape())
                            .padding(.top, -105)
            )
            
            
           
            
        }// VSTACK
        .zIndex(0)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue).ignoresSafeArea(.all, edges: .all))
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
            
    }
}
