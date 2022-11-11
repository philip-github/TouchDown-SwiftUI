//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Philip Al-Twal on 10/19/22.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout,
                      spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }//: LOOP
            }//: HGRID
                      .frame(height: 200)
                      .padding(15)
        }
    }//: BODY
}

//MARK: - PREVIEW
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
