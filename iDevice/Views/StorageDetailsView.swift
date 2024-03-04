//
//  StorageDetailsView.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import SwiftUI
import DeviceKit

struct StorageDetailsView: View {
    
    @StateObject var vm: DeviceViewModel = DeviceViewModel()
    
    var body: some View {
        Section("storage") {
            ListRow(title: "Capcity", description: vm.getStorage())
        }
    }
}

#Preview {
    StorageDetailsView()
}
