//
//  AnimatedThemeToggleSwitchApp.swift
//  AnimatedThemeToggleSwitch
//
//  Created by Sheraz Ahmed on 23/02/2025.
//

import SwiftUI

@main
struct AnimatedThemeToggleSwitchApp: App {
    
    @ObservedObject private var preferences = AppPreferences()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(preferences.colorScheme)
        }
    }
}
