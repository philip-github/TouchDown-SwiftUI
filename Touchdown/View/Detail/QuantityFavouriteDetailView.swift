//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Philip Al-Twal on 10/19/22.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    //MARK: - PROPERTIES
    @State private var counter: Int = 0
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // MINUS BUTTON
            Button(action: {
                if counter > 0{
                    feedback.impactOccurred()
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            // COUNT
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            // PLUS BUTTON
            Button(action: {
                if counter < 100{
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            Spacer()
            //HEART BUTTON
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        }//: HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }//: BODY
}

//MARK: - PREVIEW
struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
