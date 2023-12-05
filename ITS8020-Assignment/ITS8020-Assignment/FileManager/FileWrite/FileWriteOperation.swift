//
//  FileWriteOperation.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 05.12.2023..
//

import Foundation

/// Writes content at file on given destination
struct FileWriteOperation: Operation {
    let sourceURL: URL
    let content: String

    init(sourceURL: URL, destinationURL: URL? = nil, content: String?) {
        self.sourceURL = sourceURL
        self.content = content ?? ""
    }

    func perform() -> FileOperationModel {
        do {
            try content.write(toFile: sourceURL.absoluteString, atomically: true, encoding: .utf8)
            return FileOperationModel(isSuccess: true, outputInformation: "Content successfully written to file at '\(sourceURL.absoluteString)'.\n")
        } catch {
            return FileOperationModel(isSuccess: false, outputInformation: "Error writing to file: \(error)\n")
        }
    }
}
