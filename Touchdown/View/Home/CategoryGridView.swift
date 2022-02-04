//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by omer sanli on 1.02.2022.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(
                    header: SectionView(rotateClockWise: false),
                    footer: SectionView(rotateClockWise: true)) {
                    ForEach(categories){ category in
                        CategoryItemView(category: category)
                        
                    }
                }
            } // LazyHGrid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
