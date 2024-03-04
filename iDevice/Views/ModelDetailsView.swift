//
//  ModelDetailsView.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import SwiftUI
import DeviceKit

struct ModelDetailsView: View {
    
    let device: Device = Device.current
    
    var body: some View {
        Section("model details") {
            ListRow(title: "Name", description: device.model ?? "No data")
            ListRow(title: "Model", description: device.description)
        }
    }
}

#Preview {
    ModelDetailsView()
}
