//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Philip Al-Twal on 10/19/22.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal ,showsIndicators: false) {
            LazyHGrid(rows: gridLayout,
                      alignment: .center,
                      spacing: columnSpacing,
                      pinnedViews: []) {
                Section {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }//: LOOP
                } header: {
                    SectionView(rotateClockwise: false)
                } footer: {
                    SectionView(rotateClockwise: true)
                }

            }//: GRID VIEW
                      .frame(height: 140)
                      .padding(.horizontal, 15)
                      .padding(.vertical, 10)
        }//: SCROLL VIEW
    }//: BODY
}

//MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
