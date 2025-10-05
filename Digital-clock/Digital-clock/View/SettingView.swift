//
//  SettingView.swift
//  Digital-clock
//
//  Created by miyamotokenshin on R 7/09/30.
//

import SwiftUI

struct SettingView: View {
    @StateObject var viewModel = SettingViewModel()
    var body: some View {
        NavigationStack {
            Form {
                Section("一般") {
                    Picker("デザイン選択", selection: $viewModel.selectedDesign) {
                        ForEach(ClockDesign.allCases, id: \.self) { design in
                            Text(LocalizedStringKey(design.rawValue)).tag(design.rawValue)
                        }
                    }
                    
                    Picker("都市", selection: $viewModel.selectedCity) {
                        ForEach(WorldCites) { city in
                            Text(city.name).tag(city.timeZoneID)
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
