//
//  DigitalclockView.swift
//  Digital-clock
//
//  Created by miyamotokenshin on R 7/09/28.
//

import SwiftUI

struct DigitalclockView: View {
    @AppStorage("selectedDesign") var selectedDesign: String = ClockDesign.greenColor.rawValue
    @StateObject var viewModel = DigitalclockViewModel()
    @State var showModalAlarm = false
    @State var showModalSetting = false
    @State var showButton = false
    var body: some View {
        let design = ClockDesign(rawValue: selectedDesign) ?? .greenColor
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                HStack(spacing: 60) {
                    if showButton {
                        Button {
                            showModalAlarm = true
                        } label: {
                            Image(systemName: "clock")
                                .foregroundColor(.gray)
                                .padding()
                        }
                    }
                    
                    if showButton {
                        Button {
                            showModalSetting = true
                        } label: {
                            Image(systemName: "gearshape")
                                .foregroundColor(.gray)
                                .padding()
                        }
                    }
                }
                
                Text(viewModel.formattedDate)
                    .font(.title3)
                    .foregroundColor(.gray)
                
                Text(viewModel.formattedTime)
                    .font(.system(size: 110, weight: .heavy, design: .monospaced))
                    .foregroundColor(design.color)
                    .shadow(color: design.color, radius: 6)
            }
            .padding()
            .onAppear(perform: viewModel.requestNotificationPermission)
            .sheet(isPresented: $showModalAlarm) {
                AlarmView()
            }
            .sheet(isPresented: $showModalSetting) {
                SettingView()
            }
        }
        .onTapGesture {
            showButton.toggle()
        }
    }
}

#Preview {
    DigitalclockView()
}
