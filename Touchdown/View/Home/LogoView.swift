//
//  LogoView.swift
//  Touchdown
//
//  Created by Philip Al-Twal on 10/19/22.
//

import SwiftUI

struct LogoView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        HStack(spacing: 4){
            Text("touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
    }
}

//MARK: - PREVIEW
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
