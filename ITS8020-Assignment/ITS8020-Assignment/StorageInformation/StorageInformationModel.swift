//
//  StorageInformationModel.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 29.11.2023..
//

import Foundation

/// Model that StorageInformationView uses in order to print information about drive
struct StorageInformationModel {

    // MARK: - Properties
    let driveName: String
    let isInternal: Bool
    let isReadOnly: Bool

    // MARK: - Init
    /// Constructs StorageInformationModel
    init(driveName: String, isInternal: Bool, isReadOnly: Bool) {
        self.driveName = driveName
        self.isInternal = isInternal
        self.isReadOnly = isReadOnly
    }
}
