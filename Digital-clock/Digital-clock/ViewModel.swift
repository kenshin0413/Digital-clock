//
//  ViewModel.swift
//  Digital-clock
//
//  Created by miyamotokenshin on R 7/09/28.
//

import Foundation
import Combine
import UserNotifications
import SwiftUI

class DigitalclockViewModel: ObservableObject {
    @AppStorage("selectedCity") var selectedCity: String = "Asia/Tokyo"
    @Published var currentTime = Date()
    @Published var alarmTime = Date()
    var cancellable: AnyCancellable?
    
    init() {
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        cancellable = timer.sink { [weak self] _ in
            self?.currentTime = Date()
        }
    }
    
    var formattedTime: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        formatter.timeZone = TimeZone(identifier: selectedCity)
        return formatter.string(from: currentTime)
    }
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.locale = Locale.autoupdatingCurrent
        formatter.setLocalizedDateFormatFromTemplate("yyyyMMMddEEEE")
        formatter.timeZone = TimeZone(identifier: selectedCity)
        return formatter.string(from: currentTime)
    }
    // 通知の許可
    func requestNotificationPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { granted, error in
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
