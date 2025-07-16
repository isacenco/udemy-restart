//
//  OnboardingView.swift
//  Restart
//
//  Created by Ghenadie Isacenco on 16/7/25.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - RPOPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button {
                isOnboardingViewActive = false
            } label: {
                Text("Start")
            }

        } //: VSTACK
    }
}

#Preview {
    OnboardingView()
}
