//
//  DisplayDetailedView.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import SwiftUI
import DeviceKit

struct DisplayDetailedView: View {
    
    @StateObject var vm: DeviceViewModel = DeviceViewModel()
    let device: Device = Device.current
    
    var body: some View {
        Section("Display") {
            ListRow(title: "Size", description: device.diagonal.description)
            ListRow(title: "Resolution", description: vm.getScreenResolution())
            ListRow(title: "PPI", description: device.ppi?.description ?? "No data")
            ListRow(title: "Screen ratio", description: "\(device.screenRatio.height.description) x \(device.screenRatio.width.description)")
        }
    }
}

#Preview {
    DisplayDetailedView()
}
