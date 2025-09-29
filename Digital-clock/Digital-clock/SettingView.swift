//
//  SettingView.swift
//  Digital-clock
//
//  Created by miyamotokenshin on R 7/09/30.
//

import SwiftUI

struct SettingView: View {
    @AppStorage("selectedDesign") var selectedDesign: String = ClockDesign.greenColor.rawValue
    var body: some View {
        NavigationStack {
            Form {
                Section("デザイン設定") {
                    Picker("", selection: $selectedDesign) {
                        ForEach(ClockDesign.allCases, id: \ .self) { design in
                            Text(design.rawValue).tag(design.rawValue)
                        }
                    }
                }
            }
            .navigationTitle("設定")
        }
    }
}

#Preview {
    SettingView()
}
