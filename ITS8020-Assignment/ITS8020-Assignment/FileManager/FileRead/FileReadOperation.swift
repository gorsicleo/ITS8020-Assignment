//
//  FileReadOperation.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 05.12.2023..
//

import Foundation

/// Reads file at given path
struct FileReadOperation: Operation {
    let sourceURL: URL

    init(sourceURL: URL, destinationURL: URL? = nil, content: String? = nil) {
        self.sourceURL = sourceURL
    }

    func perform() -> FileOperationModel {
            do {
                let fileContent = try String(contentsOfFile: sourceURL.absoluteString, encoding: .utf8)
                return FileOperationModel(isSuccess: true, outputInformation: "File content at '\(sourceURL.absoluteString)':\n\(fileContent)\n\n")
            } catch {
                return FileOperationModel(isSuccess: false, outputInformation: "Error reading file: \(error)\n")
            }
    }
}
