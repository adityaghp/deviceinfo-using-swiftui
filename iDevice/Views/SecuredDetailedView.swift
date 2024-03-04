//
//  SecuredDetailedView.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import SwiftUI
import DeviceKit

struct SecuredDetailedView: View {
    
    let device: Device = Device.current
    
    var body: some View {
        Section("imei and Serial number") {
            NavigationLink {
                Text("Due to privacy and security reasons IMEI number cant be displayed in the app. Dial *#06# form the dialer to get IMEI number.")
                    .font(.callout)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.gray)
            } label: {
                Text("IMEI")
            }
            
            NavigationLink {
                Text("Cannot display serial number due to privacy reasons. Go to Settings > General > About to find the serial number.")
                    .font(.callout)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.gray)
            } label: {
                Text("Serial Number")
            }
        }
    }
}

#Preview {
    SecuredDetailedView()
}
