//
//  Shop.swift
//  Touchdown
//
//  Created by Philip Al-Twal on 10/20/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
