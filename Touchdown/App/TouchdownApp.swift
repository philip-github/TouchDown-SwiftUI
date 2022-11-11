//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Philip Al-Twal on 10/19/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
