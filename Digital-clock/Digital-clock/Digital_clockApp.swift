//
//  Digital_clockApp.swift
//  Digital-clock
//
//  Created by miyamotokenshin on R 7/09/28.
//

import SwiftUI
import UserNotifications

@main
struct ClockApp: App {
    init() {
        // 通知デリゲートをセット
        UNUserNotificationCenter.current().delegate = NotificationDelegate.shared
    }
    
    var body: some Scene {
        WindowGroup {
            DigitalclockView()
        }
    }
}

class NotificationDelegate: NSObject, UNUserNotificationCenterDelegate {
    static let shared = NotificationDelegate()
    // フォアグラウンドでも通知を出す設定
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification,
                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner, .sound])
    }
}
