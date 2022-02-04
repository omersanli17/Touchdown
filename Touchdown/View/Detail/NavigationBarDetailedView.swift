//
//  NavigationBarDetailedView.swift
//  Touchdown
//
//  Created by omer sanli on 3.02.2022.
//

import SwiftUI

struct NavigationBarDetailedView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn){
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                    feedback.impactOccurred()
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
                
            }// BUTTON
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
                
            }// BUTTON

        }// HSTACK
    }
}

struct NavigationBarDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailedView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
