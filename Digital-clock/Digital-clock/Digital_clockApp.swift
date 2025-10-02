//
//  Digital_clockApp.swift
//  Digital-clock
//
//  Created by miyamotokenshin on R 7/09/28.
//

import SwiftUI
import UserNotifications
import FirebaseCore
import FirebaseAnalytics

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      FirebaseApp.configure()
      print("✅ Firebase configured")
      return true
  }
}

@main
struct ClockApp: App {
    init() {
        // 通知デリゲートをセット
        UNUserNotificationCenter.current().delegate = NotificationDelegate.shared
    }
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            SplashView()
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
