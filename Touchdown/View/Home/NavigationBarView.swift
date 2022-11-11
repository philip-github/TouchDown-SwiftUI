//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Philip Al-Twal on 10/19/22.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })//: BUTTON
            Spacer()
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x: 0, y: isAnimating ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.4)) {
                        isAnimating.toggle()
                    }
                }
            Spacer()
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .foregroundColor(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 14, y: -10)
                }
            })//: BUTTON
        }
    }
}

//MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
