//
//  Trecker_MultiplatformApp.swift
//  Shared
//
//  Created by Melville, Aidan on 2021-01-25.
//

import SwiftUI

@main
struct Trecker_MultiplatformApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationDetail(location: Location.example)
            }
        }
    }
}
