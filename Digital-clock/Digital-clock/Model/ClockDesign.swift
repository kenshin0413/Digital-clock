//
//  ClockDesign.swift
//  Digital-clock
//
//  Created by miyamotokenshin on R 7/10/02.
//

import Foundation
import SwiftUI

enum ClockDesign: String, CaseIterable {
    case whiteColor = "ホワイト"
    case redColor = "レッド"
    case greenColor = "グリーン"
    case blueColor = "ブルー"
    case yellowColor = "イエロー"
    case orangeColor = "オレンジ"
    case purpleColor = "パープル"
    case pinkColor = "ピンク"
    case cyanColor = "シアン"
    case tealColor = "ティール"
    case mintColor = "ミント"
    case indigoColor = "インディゴ"
    case brownColor = "ブラウン"
    case grayColor = "グレー"
    
    var color: Color {
        switch self {
        case .whiteColor: return .white
        case .redColor: return .red
        case .greenColor: return .green
        case .blueColor: return .blue
        case .yellowColor: return .yellow
        case .orangeColor: return .orange
        case .purpleColor: return .purple
        case .pinkColor: return .pink
        case .cyanColor: return .cyan
        case .tealColor: return .teal
        case .mintColor: return .mint
        case .indigoColor: return .indigo
        case .brownColor: return .brown
        case .grayColor: return .gray
        }
    }
}
