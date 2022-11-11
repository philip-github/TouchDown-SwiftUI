//
//  FooterView.swift
//  Touchdown
//
//  Created by Philip Al-Twal on 10/19/22.
//

import SwiftUI

struct FooterView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Text("We offer the most cutting edge, comfortable, lightweight, and durable football helmets in the market at affordable prices.")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Philip Al-Twal\n All rights reserved")
                .font(.footnote)
                .foregroundColor(.gray)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
    }
}

//MARK: - PREVIEW
struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
