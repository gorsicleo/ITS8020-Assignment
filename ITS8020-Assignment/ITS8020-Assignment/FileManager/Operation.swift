//
//  Operation.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 30.11.2023..
//

import Foundation

/// Defines operation that can be executed on file manager
protocol Operation {
    init(sourceURL: URL, destinationURL: URL?, content: String?)

    func perform() -> FileOperationModel
}
