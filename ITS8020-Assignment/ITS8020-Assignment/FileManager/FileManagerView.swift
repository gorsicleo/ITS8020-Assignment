//
//  FileManagerView.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 30.11.2023..
//

import Foundation

struct FileManagerView {

    /// Prints drive information, given from the model
    func display(operation: FileOperationModel) {
        print("Operation status \(operation.isSuccess)")
        print("Operation output: \(operation.outputInformation)")
    }
}
