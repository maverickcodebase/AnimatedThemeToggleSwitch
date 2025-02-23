//
//  ContentView.swift
//  AnimatedThemeToggleSwitch
//
//  Created by Maverick Codebase on 23/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            VStack {
                Text("App Preferences")
                    .font(.headline)
                Text("personalize your app's appearance with the theme that suits your style")
                    .multilineTextAlignment(.center)
                
            }
            AnimatedToggleSwitch()
        }
        .padding()
    }
}

#Preview {
    @Previewable @ObservedObject var preferences = AppPreferences()
    ContentView()
        .preferredColorScheme(preferences.colorScheme)
}
