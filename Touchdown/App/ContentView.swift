//
//  ContentView.swift
//  Touchdown
//
//  Created by omer sanli on 28.01.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
     
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0){
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false){
                        VStack(spacing: 0){
                            FeaturedTabView()
                                .padding(.vertical)
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            LazyVGrid(columns: gridLayout, spacing: 15){
                                ForEach(products){ product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                                feedback.impactOccurred()
                                            }
                                        }
                                }// LOOP
                            } // GRID
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    }

                   
                } // : VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }// ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
