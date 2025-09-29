//
//  Model.swift
//  Digital-clock
//
//  Created by miyamotokenshin on R 7/09/30.
//

import Foundation
import SwiftUI

enum ClockDesign: String, CaseIterable {
    case whiteColor = "ホワイト"
    case redColor = "レッド"
    case greenColor = "グリーン"
    case blueColor = "ブルー"
    
    var color: Color {
        switch self {
        case .whiteColor: return .white
        case .redColor: return .red
        case .greenColor: return .green
        case .blueColor: return .blue
        }
    }
}
