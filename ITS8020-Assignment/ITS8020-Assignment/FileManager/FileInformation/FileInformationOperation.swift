//
//  FileInformationOperation.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 30.11.2023..
//

import Foundation

/// Operation reads file information
struct FileInformationOperation: Operation {
    let sourceURL: URL

    init(sourceURL: URL, destinationURL: URL? = nil, content: String? = nil) {
        self.sourceURL = sourceURL
    }

    /// Extracts file information
    /// - Source: ChatGPT generated attribute keys
    func perform() -> FileOperationModel {
        var outputInformation = ""

        do {
            let attributes = try FileManager.default.attributesOfItem(atPath: sourceURL.path)

            // Common attributes
            if let size = attributes[.size] as? Int {
                outputInformation += "File Size: \(size) bytes \n"
            }

            if let creationDate = attributes[.creationDate] as? Date {
                outputInformation += "Creation Date: \(creationDate) \n"
            }

            if let modificationDate = attributes[.modificationDate] as? Date {
                outputInformation += "Modification Date: \(modificationDate) \n"
            }

            if let owner = attributes[.ownerAccountID] as? NSNumber {
                outputInformation += "Owner Account ID: \(owner) \n"
            }

            if let group = attributes[.groupOwnerAccountID] as? NSNumber {
                outputInformation += "Group Owner Account ID: \(group) \n"
            }

            if let permissions = attributes[.posixPermissions] as? Int {
                outputInformation += "Posix Permissions: \(permissions) \n"
            }

            if let type = attributes[.type] as? FileAttributeType {
                outputInformation += "File Type: \(type) \n"
            }

            if let isDirectory = attributes[.type] as? FileAttributeType, isDirectory == .typeDirectory {
                outputInformation += "It's a Directory!"
            }

            if let systemNumber = attributes[.systemNumber] as? NSNumber {
                outputInformation += "System File Number: \(systemNumber) \n"
            }

            if let deviceNumber = attributes[.systemNumber] as? NSNumber {
                outputInformation += "Device Number: \(deviceNumber) \n"
            }

            return FileOperationModel(isSuccess: true, outputInformation: outputInformation)
        } catch {
            outputInformation += "Error getting file attributes: \(error) \n"
            return FileOperationModel(isSuccess: false, outputInformation: outputInformation)
        }

    }

}
