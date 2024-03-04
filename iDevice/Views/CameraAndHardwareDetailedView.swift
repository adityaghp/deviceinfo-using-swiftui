//
//  CameraAndHardwareDetailedView.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import SwiftUI

struct CameraAndHardwareDetailedView: View {
    
    @StateObject var vm: DeviceViewModel = DeviceViewModel()
    
    var body: some View {
        Section("Camera and Hardware") {
            ListRow(title: "Mega Pixels", description: vm.getCameraMP())
            ListRow(title: "Aperture", description: "f/\(vm.getCamerAperture())")
            NavigationLink {
                CameraDetailsView()
            } label: {
                Text("Click here for more details")
                    .foregroundStyle(Color.blue)
            }
            
        }
    }
}

#Preview {
    CameraAndHardwareDetailedView()
}
