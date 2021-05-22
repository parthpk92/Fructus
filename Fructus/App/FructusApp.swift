//
//  FructusApp.swift
//  Fructus
//
//  Created by Parth Kapadia on 11/04/21.
//

import SwiftUI

@main
struct FructusApp: App {
    //
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
                
//            isOnboarding = false
            }
            else {
                ContentView()
            }
        }
    }
}
