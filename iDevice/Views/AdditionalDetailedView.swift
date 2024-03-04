//
//  AdditionalDetailedView.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import SwiftUI
import DeviceKit

struct AdditionalDetailedView: View {
    
    let device: Device = Device.current
    
    var body: some View {
        Section("Other Details and Sensors") {
            ListRow(title: "Sensor House", description: device.hasSensorHousing ? "Yes" : "No")
            ListRow(title: "Biometric Sensor", description: device.hasBiometricSensor ? "Yes" : "No")
            ListRow(title: "Face ID", description: device.isFaceIDCapable ? "Yes" : "No")
            ListRow(title: "Touch ID", description: device.isTouchIDCapable ? "Yes" : "No")
            ListRow(title: "LIDAR", description: device.hasLidarSensor ? "Yes" : "No")
            ListRow(title: "USB C connectivity", description: device.hasUSBCConnectivity ? "Yes" : "No")
            ListRow(title: "Wireless Charging", description: device.supportsWirelessCharging ? "Yes" : "No")
            ListRow(title: "Dynamic Island", description: device.hasDynamicIsland ? "Yes" : "No")
            
        }
    }
}

#Preview {
    AdditionalDetailedView()
}
