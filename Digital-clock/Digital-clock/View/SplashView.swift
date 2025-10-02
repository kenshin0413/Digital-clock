//
//  SplashView.swift
//  Digital-clock
//
//  Created by miyamotokenshin on R 7/09/30.
//

import SwiftUI
import FirebaseAnalytics

struct SplashView: View {
    @State private var isActive = false
    @State private var opacity = 1.0

    var body: some View {
        ZStack {
            if isActive {
                DigitalclockView()
            } else {
                Color.black.ignoresSafeArea()
                VStack {
                    Image("splash_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .opacity(opacity)
                }
            }
        }
        .onAppear {
            // 2秒表示後にフェードアウト
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation(.easeOut(duration: 1)) {
                    opacity = 0
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    isActive = true
                }
            }
            Analytics.logEvent("test_event", parameters: nil)

        }
    }
}

#Preview {
    SplashView()
}
