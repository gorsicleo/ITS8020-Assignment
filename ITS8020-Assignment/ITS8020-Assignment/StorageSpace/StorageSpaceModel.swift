//
//  StorageSpaceModel.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 29.11.2023..
//

import Foundation

/// Model that StorageSpaceView uses in order to visualise storage space of a drive
struct StorageSpaceModel {

    // MARK: - Properties
    let driveLabel: String
    let availableCapacityGB: Double
    let totalCapacityGB: Double

    // MARK: - Helpers
    private let gbDivider = 1_000_000_000.0

    // MARK: - Init
    ///Constructs StorageSpaceModel, capacities are given in bytes
    init(driveLabel: String, availableCapacityB: Int, totalCapacityB: Int) {
        self.driveLabel = driveLabel
        self.availableCapacityGB = Double(availableCapacityB) / gbDivider
        self.totalCapacityGB = Double(totalCapacityB) / gbDivider
    }
}
