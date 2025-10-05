//
//  AlarmViewModel.swift
//  Digital-clock
//
//  Split per ViewModel
//

import Foundation
import UserNotifications
import SwiftUI

class AlarmViewModel: ObservableObject {
    @Published var alarmTime = Date()

    func requestNotificationPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { granted, _ in
            if granted {
                print("通知が許可されました")
            } else {
                print("通知が拒否されました")
            }
        }
    }

    func scheduleAlarm(for date: Date) {
        let content = UNMutableNotificationContent()
        content.title = "アラーム"
        content.body = "時間になりました。"
        content.sound = UNNotificationSound.defaultCriticalSound(withAudioVolume: 1.0)

        let components = Calendar.current.dateComponents([.hour, .minute], from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
        let request = UNNotificationRequest(identifier: "alarmTime", content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("通知エラー:\(error.localizedDescription)")
            }
        }
    }
}

