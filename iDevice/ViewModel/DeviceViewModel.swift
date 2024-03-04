//
//  DeviceViewModel.swift
//  iDevice
//
//  Created by Aditya Ghorpade on 04/03/24.
//

import Foundation
import UIKit
import SwiftUI
import DeviceKit
import AVFoundation
import Metal

class DeviceViewModel: ObservableObject {
    
    //get storage data
    func getStorage() -> String {
        var storage = ""
        let fileManager = FileManager.default
        if let documentDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first {
            do {
                let storageAttributes = try fileManager.attributesOfFileSystem(forPath: documentDirectory.path)
                if let totalSize = storageAttributes[FileAttributeKey.systemSize] as? NSNumber {
                    storage = "\(totalSize.int64Value / (1024 * 1024 * 1024)) GB"
                }
            } catch {
                print("Error: \(error)")
            }
        }
        return storage
    }
    
    //get Mega Pixels
    func getCameraMP() -> String {
        let camera = AVCaptureDevice.default(for: .video)
        return "\(camera?.activeFormat.videoMaxZoomFactor ?? 0)"
    }
    
    //get Aperture
    func getCamerAperture() -> String {
        let camera = AVCaptureDevice.default(for: .video)
        return "\(camera?.lensAperture ?? 0)"
    }
    
    //get Screen Resolution
    func getScreenResolution() -> String {
        let mainScreenBounds = UIScreen.main.bounds
        let scale = UIScreen.main.scale
        let resolution = CGSize(width: mainScreenBounds.width * scale, height: mainScreenBounds.height * scale)
        return "\(Int(resolution.height)) x \(Int(resolution.width))"
    }
    
    //get gpu details
    func getGPUName() -> String {
        guard let device = MTLCreateSystemDefaultDevice() else {
            return "N/A"
        }
        return device.name
    }
}
