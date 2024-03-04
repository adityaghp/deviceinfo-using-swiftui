//
//  BatteryDetailsView.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import SwiftUI
import DeviceKit

struct BatteryDetailsView: View {
    
    let device: Device = Device.current
    
    var body: some View {
        Section("Battery") {
            ListRow(title: "Battery Health", description: device.batteryLevel?.description ?? "No data")
            ListRow(title: "Battery Level: ", description: device.batteryState?.description ?? "No data")
        }
    }
}

#Preview {
    BatteryDetailsView()
}
