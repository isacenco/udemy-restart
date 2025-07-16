//
//  ContentView.swift
//  Restart
//
//  Created by Ghenadie Isacenco on 16/7/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewIsActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewIsActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        .animation(.easeOut(duration: 0.4), value: isOnboardingViewIsActive)
    }
}

#Preview {
    ContentView()
}
