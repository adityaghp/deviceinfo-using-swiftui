//
//  ContentView.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm: DeviceViewModel = DeviceViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ModelDetailsView()
                SoftwareDetailsView()
                StorageDetailsView()
                BatteryDetailsView()
                CameraAndHardwareDetailedView()
                DisplayDetailedView()
                ProcessorAndGpuDetailedView()
                NetworksDetailedView()
                AdditionalDetailedView()
                SecuredDetailedView()
            }
            .navigationTitle("Details")
        }
    }
}

#Preview {
    ContentView()
}
