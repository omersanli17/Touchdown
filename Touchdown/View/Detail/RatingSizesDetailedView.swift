//
//  RatingSizesDetailedView.swift
//  Touchdown
//
//  Created by omer sanli on 3.02.2022.
//

import SwiftUI

struct RatingSizesDetailedView: View {
    // MARK: - PROPERTIES
    
    let sizes: [String] = ["XS","S","M","L","XL"]
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3){
        // RATINGS
            
            VStack(alignment: .leading, spacing: 3){
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3){
                    ForEach(1...5, id:\.self){ item in
                        Button {
                            
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        }

                    }
                }
                
            }
        
            Spacer()
        // SIZES
            
            VStack(alignment: .trailing, spacing: 3){
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5){
                    ForEach(sizes, id:\.self){ sizes in
                        
                        Button {
                            
                        } label: {
                            Text(sizes)
                                .font(.footnote)
                                .fontWeight(.black)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5).stroke(colorGray, lineWidth: 2))
                        }

                        
                        
                    }
                }
            }// VSTACK
        
        }// HSTACK
    }


struct RatingSizesDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailedView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
}
