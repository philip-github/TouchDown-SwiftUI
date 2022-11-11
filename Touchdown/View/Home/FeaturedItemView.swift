//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Philip Al-Twal on 10/19/22.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTIES
    var player: Player
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }//: BODY
}

//MARK: - PREVIEW
struct FeaturedItemView_Previews: PreviewProvider {
    static let myPlayers = players
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
