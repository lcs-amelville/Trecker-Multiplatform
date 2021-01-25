//
//  Trecker_MultiplatformApp.swift
//  Shared
//
//  Created by Melville, Aidan on 2021-01-25.
//

import SwiftUI

@main
struct Trecker_MultiplatformApp: App {
    
    @StateObject var store = LocationStore()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationsList(store: store)
            }
        }
    }
}
