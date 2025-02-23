//
//  AppPreferences.swift
//  AnimatedThemeToggleSwitch
//
//  Created by Sheraz Ahmed on 23/02/2025.
//

import Foundation
import SwiftUI

final class AppPreferences: ObservableObject {
    @AppStorage("isDarkTheme") var isDarkTheme: Bool = false
    
    var colorScheme: ColorScheme {
        isDarkTheme ? .dark : .light
    }
}
