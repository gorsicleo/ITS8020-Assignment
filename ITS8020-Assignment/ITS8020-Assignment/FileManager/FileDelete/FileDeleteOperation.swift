//
//  FileDeleteOperation.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 05.12.2023..
//

import Foundation

/// Deletes file at given path
struct FileDeleteOperation: Operation {
    let sourceURL: URL

    init(sourceURL: URL, destinationURL: URL? = nil, content: String? = nil) {
        self.sourceURL = sourceURL
    }

    func perform() -> FileOperationModel {
        let fileManager = FileManager.default

            do {
                try fileManager.removeItem(atPath: sourceURL.absoluteString)
                return FileOperationModel(isSuccess: true, outputInformation: "File deleted successfully at '\(sourceURL.absoluteString)'\n")
            } catch {
                return FileOperationModel(isSuccess: false, outputInformation: "Error deleting file: \(error) \n")
            }
    }
}
