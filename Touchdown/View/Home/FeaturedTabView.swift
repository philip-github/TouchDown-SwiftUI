//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Philip Al-Twal on 10/19/22.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }//: LOOP
        }//: TAB VIEW
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }//: BODY
}
//MARK: - PREVIEW
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
//            .previewLayout(.sizeThatFits)
            .background(.gray)
    }
}
