//
//  StorageSpaceController.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 29.11.2023..
//

import Foundation

/// Reads the drive information and presents it to the console
class StorageSpaceController {
    let fileManager = FileManager.default
    let storageSpaceView = StorageSpaceView()

    /// Entry point, reads information from drives and displayes it to the console
    func start() {
        do {
            try printDriveSpace(driveModels: readDataInformation())
        } catch {
            storageSpaceView.displayError()
        }
    }

    /// Creates array of StorageSpaceModel using fileManager, throws error if values can't be read
    private func readDataInformation() throws -> [StorageSpaceModel] {
        let availableDrives = fileManager.mountedVolumeURLs(includingResourceValuesForKeys: nil, options: .skipHiddenVolumes)
        var result: [StorageSpaceModel] = []
        try availableDrives?.forEach { drive in
            let values = try drive.resourceValues(forKeys: [.volumeTotalCapacityKey, .volumeAvailableCapacityKey])

            if let availableCapacity = values.volumeAvailableCapacity, let totalCapacity = values.volumeTotalCapacity {
                let driveModel = StorageSpaceModel(driveLabel: drive.path, availableCapacityB: availableCapacity, totalCapacityB: totalCapacity)
                result.append(driveModel)
            }
        }
        return result
    }

    /// Displays every StorageSpaceModel from driveModels argument
    private func printDriveSpace(driveModels: [StorageSpaceModel]) {
        driveModels.forEach { driveModel in
            storageSpaceView.displayData(model: driveModel)
            storageSpaceView.displayBar(model: driveModel)
        }
    }
}
