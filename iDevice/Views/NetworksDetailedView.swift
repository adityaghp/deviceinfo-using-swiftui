//
//  NetworksDetailedView.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import SwiftUI
import DeviceKit

struct NetworksDetailedView: View {
    
    let device: Device = Device.current
    
    var body: some View {
        Section("Network") {
            ListRow(title: "Supports 5G", description: device.has5gSupport ? "Yes" : "No")
        }
    }
}

#Preview {
    NetworksDetailedView()
}
