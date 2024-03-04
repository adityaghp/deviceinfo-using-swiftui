//
//  CameraDetailsView.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import SwiftUI
import DeviceKit

struct CameraDetailsView: View {
    
    let device: Device = Device.current
    
    var body: some View {
        VStack {
            List {
                ListRow(title: "Wide Angle", description: device.hasWideCamera ? "Yes" : "No")
                ListRow(title: "Telephoto Lens", description: device.hasTelephotoCamera ? "Yes" : "No")
                ListRow(title: "Ultra Wide", description: device.hasUltraWideCamera ? "Yes" : "No")
                ListRow(title: "LIDAR", description: device.hasLidarSensor ? "Yes" : "No")
            }
            .navigationTitle("Camera details")
        }
        
    }
}

#Preview {
    CameraDetailsView()
}
