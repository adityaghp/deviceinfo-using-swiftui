//
//  SoftwareDetailsView.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import SwiftUI
import DeviceKit

struct SoftwareDetailsView: View {
    
    let device: Device = Device.current
    
    var body: some View {
        Section("software details") {
            ListRow(title: "iOS version", description: device.systemVersion ?? "iOS")
        }
    }
}

#Preview {
    SoftwareDetailsView()
}
