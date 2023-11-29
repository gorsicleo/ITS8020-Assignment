//
//  StorageSpaceView.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 29.11.2023..
//

import Foundation

struct StorageSpaceView {

    /// Prints drive information, given from the model
    func displayData(model: StorageSpaceModel) {
        print("Drive label: \(model.driveLabel)")
        print("Total Capacity: \(String(format: "%.2f", model.totalCapacityGB )) GB")
        print("Available Space: \(String(format: "%.2f", model.availableCapacityGB)) GB")
    }

    /// Appends visual representation of drive with progress-bar ASCII art
    func displayBar(model: StorageSpaceModel) {
        let totalBlocks = 20
        let filledBlocks = Int((model.totalCapacityGB - model.availableCapacityGB) / model.totalCapacityGB * Double(totalBlocks))
        let barRepresentation = String(repeating: "█", count: filledBlocks) + String(repeating: "-", count: totalBlocks - filledBlocks)

        print("Storage Bar: \(barRepresentation)")
        print("-------------------------------")
    }

    func displayError() {
        print("We can't read drive data :(")
    }
}
