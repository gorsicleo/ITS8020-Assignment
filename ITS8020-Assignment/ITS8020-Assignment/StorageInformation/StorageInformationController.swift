//
//  StorageInformationController.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 29.11.2023..
//

import Foundation

/// Reads the drive information and presents it to the console
class StorageInfromationController {
    let fileManager = FileManager.default
    let storageInfromationView = StorageInformationView()

    /// Entry point, reads information from drives and displayes it to the console
    func start() {
        do {
            try printDriveInformation(driveModels: readDriveInformation())
        } catch {
            storageInfromationView.displayError()
        }
    }

    /// Creates array of StorageInfromationModel using fileManager, throws error if values can't be read
    private func readDriveInformation() throws -> [StorageInformationModel] {
        let availableDrives = fileManager.mountedVolumeURLs(includingResourceValuesForKeys: nil, options: .skipHiddenVolumes)
        var result: [StorageInformationModel] = []
        try availableDrives?.forEach { drive in
            let values = try drive.resourceValues(forKeys: [.volumeNameKey, .volumeIsReadOnlyKey, .volumeIsInternalKey])
            if let name = values.volumeName, let isInternal = values.volumeIsInternal, let isReadOnly = values.volumeIsReadOnly {
                let model = StorageInformationModel(driveName: name, isInternal: isInternal, isReadOnly: isReadOnly)
                result.append(model)
            }

        }
        return result
    }

    /// Displays every StorageInfromationModel from driveModels argument
    private func printDriveInformation(driveModels: [StorageInformationModel]) {
        driveModels.forEach { driveModel in
            storageInfromationView.displayData(model: driveModel)
        }
    }
}
