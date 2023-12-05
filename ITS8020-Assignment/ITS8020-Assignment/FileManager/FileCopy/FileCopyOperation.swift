//
//  FileCopyOperation.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 05.12.2023..
//

import Foundation

/// Operation copies file, destination file must be given
struct FileCopyOperation: Operation {
    let sourceURL: URL
    let destinationURL: URL

    init(sourceURL: URL, destinationURL: URL?, content: String? = nil) {
        self.sourceURL = sourceURL
        self.destinationURL = destinationURL ?? sourceURL
    }

    func perform() -> FileOperationModel {
        let fileManager = FileManager.default

            do {
                try fileManager.copyItem(atPath: sourceURL.absoluteString, toPath: destinationURL.absoluteString)
                return FileOperationModel(isSuccess: true, outputInformation: "File copied successfully from '\(sourceURL.absoluteString)' to '\(destinationURL.absoluteString)'.\n")
            } catch {
                return FileOperationModel(isSuccess: false, outputInformation: "Error copying file: \(error)\n")
            }
    }
}
