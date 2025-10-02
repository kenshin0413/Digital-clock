//
//  AlarmView.swift
//  Digital-clock
//
//  Created by miyamotokenshin on R 7/09/29.
//

import SwiftUI

struct AlarmView: View {
    @StateObject var viewModel = DigitalclockViewModel()
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                DatePicker("通知時刻", selection: $viewModel.alarmTime, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                    .datePickerStyle(.wheel)
                
                Button("通知をセット") {
                    viewModel.scheduleAlarm(for: viewModel.alarmTime)
                    dismiss()
                }
            }
            .navigationTitle("通知")
        }
    }
}

#Preview {
    AlarmView()
}
