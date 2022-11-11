//
//  ContentView.swift
//  Touchdown
//
//  Created by Philip Al-Twal on 10/19/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    //MARK: - NAVIGATION BAR
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top,
                                 (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.05),
                                radius: 5,
                                x: 0,
                                y: 5)
                    //MARK: - SCROLL VIEW
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                                .padding(.vertical, 20)
                            CategoryGridView()
                            TitleView(title: "Helmets")
                            LazyVGrid(columns: gridLayout, spacing: 15) {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }//: LOOP
                            }//: VGRID
                            .padding(15)
                            TitleView(title: "Brands")
                            //MARK: - BRANDS GRID
                            BrandGridView()
                            FooterView()
                                .padding(.horizontal)
                        }//: VSTACK
                    })//: SCROLL VIEW
                }//: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }//: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }//: BODY
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
