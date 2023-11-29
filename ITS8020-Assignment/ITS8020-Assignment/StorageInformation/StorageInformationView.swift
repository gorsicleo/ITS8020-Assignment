//
//  StorageInformationView.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 29.11.2023..
//

import Foundation

struct StorageInformationView {

    /// Prints drive information, given from the model
    func displayData(model: StorageInformationModel) {
        print("Drive name: \(model.driveName)")
        print("Is internal: \(model.isInternal)")
        print("Is read only: \(model.isReadOnly)")
    }

    func displayError() {
        print("We can't read drive data :(")
    }
}
