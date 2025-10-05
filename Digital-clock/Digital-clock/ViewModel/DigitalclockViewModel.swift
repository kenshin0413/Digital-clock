//
//  ClockViewModel.swift
//  Digital-clock
//
//  Split per ViewModel
//

import Foundation
import Combine
import SwiftUI

class ClockViewModel: ObservableObject {
    @AppStorage("selectedCity") var selectedCity: String = "Asia/Tokyo"
    @Published var currentTime = Date()
    private var cancellable: AnyCancellable?

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
}

