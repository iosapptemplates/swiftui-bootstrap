//
//  SwiftUIStarterKitApp.swift
//  SwiftUIStarterKitApp
//
//  Modern SwiftUI entry point
//

import SwiftUI
import UIKit

@main
struct SwiftUIStarterKitApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    @StateObject private var userSettings = UserSettings()
    
    var body: some Scene {
        WindowGroup {
            TabbarView()
                .environmentObject(userSettings)
        }
    }
}


