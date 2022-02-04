//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by omer sanli on 28.01.2022.
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
