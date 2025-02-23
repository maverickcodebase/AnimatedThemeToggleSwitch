//
//  AnimatedToggleSwitch.swift
//  AnimatedThemeToggleSwitch
//
//  Created by Sheraz Ahmed on 23/02/2025.
//

import SwiftUI

struct AnimatedToggleSwitch: View {
    
    @State private var dragOffset: CGFloat = 0.0
    @ObservedObject private var preferences = AppPreferences()
    
    var body: some View {
        
        ZStack{
            Capsule()
                .fill(preferences.isDarkTheme ? Color.indigo : Color.blue.opacity(0.2))
                .frame(width: 90, height: 50)
                .overlay {
                    if preferences.isDarkTheme {
                        Image(.stars)
                            .transition(.opacity)
                    }else{
                        Image(.clouds)
                            .transition(.opacity)
                    }
                }
                .clipShape(Capsule())
                .animation(.easeInOut, value: preferences.isDarkTheme)

         
            Circle()
                .fill(preferences.isDarkTheme ? Color.white : Color.orange)
                .frame(width: 40,height: 40)
                .shadow(color: preferences.isDarkTheme ? Color.white : Color.orange, radius: 10)
                .overlay(content: {
                    Circle()
                        .fill(Color.indigo)
                        .frame(width: 30, height: 30)
                        .offset(x: preferences.isDarkTheme ? 5 : 0, y: preferences.isDarkTheme ? -5 : 0)
                        .opacity(preferences.isDarkTheme ? 1 : 0)
                })
                .clipShape(Circle())
            
                .animation(.spring(), value: preferences.isDarkTheme)
            
                .offset(x: preferences.isDarkTheme ? 20 : -20 + dragOffset)
                .contentShape(Capsule())
                .onTapGesture {
                    preferences.isDarkTheme.toggle()
                }
            
        }
    }
}

#Preview {
    AnimatedToggleSwitch()
}
