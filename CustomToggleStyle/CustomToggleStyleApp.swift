//
//  CustomToggleStyleApp.swift
//  CustomToggleStyle
//
//  Created by MacBook Pro on 2021/6/11.
//

import SwiftUI

@main
struct CustomToggleStyleApp: App {
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase) { phase in
            switch phase {
            case .active:
                print("App is active")
            case .inactive:
                print("App is inactive")
            case .background:
                print("App is in background")
            @unknown default:
                print("Oh - interesting: I received an unexpected new value.")
            }
        }
    }
}
