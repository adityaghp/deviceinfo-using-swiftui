//
//  ProcessorAndGpuDetailedView.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import SwiftUI
import DeviceKit

struct ProcessorAndGpuDetailedView: View {
    
    @StateObject var vm: DeviceViewModel = DeviceViewModel()
    let device: Device = Device.current
    
    var body: some View {
        Section("Processor and gpu") {
            ListRow(title: "Processor", description: device.cpu.description)
            ListRow(title: "Cores", description: "\(ProcessInfo.processInfo.processorCount.description) cores")
            ListRow(title: "GPU", description: vm.getGPUName())
        }
    }
}

#Preview {
    ProcessorAndGpuDetailedView()
}
