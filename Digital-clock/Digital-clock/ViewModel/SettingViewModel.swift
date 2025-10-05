//
//  SettingViewModel.swift
//  Digital-clock
//
//  Split per ViewModel
//

import Foundation
import SwiftUI

class SettingViewModel: ObservableObject {
    @AppStorage("selectedDesign") var selectedDesign: String = ClockDesign.greenColor.rawValue
    @AppStorage("selectedCity") var selectedCity: String = "Asia/Tokyo"
}

