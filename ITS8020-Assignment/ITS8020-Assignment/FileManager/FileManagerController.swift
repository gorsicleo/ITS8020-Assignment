//
//  FileManagerController.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 30.11.2023..
//

import Foundation

/// Menu and operation executor for file operation
final class FileManagerController {
    var fileURL: URL = .homeDirectory
    let view = FileManagerView()

    /// Entry point
    func start() {
        var currentSelection: FileManagerMenuItem?

    menuLoop: while true {

            print("""
            \n
                File manager:
                Please select options from menu
                    1. File information
                    2. File copy
                    3. File delete
                    4. File Read
                    5. File Write
                    6. Return to main menu
                Type number in front of the option below:
            """)

            let userInput = readLine() ?? ""
            currentSelection = FileManagerMenuItem(rawValue: Int(userInput) ?? -1)

            if currentSelection != .back {
                print("Path to file:")
                fileURL = URL(string: readLine() ?? "") ?? .homeDirectory
            }

            switch currentSelection {
            case .fileInformation:
                view.display(operation: FileInformationOperation(sourceURL: fileURL).perform())
            case .fileCopy:
                print("Path to destination:")
                let destinationURL = URL(string: readLine() ?? "")
                view.display(operation: FileCopyOperation(sourceURL: fileURL, destinationURL: destinationURL).perform())
            case .fileDelete:
                view.display(operation: FileDeleteOperation(sourceURL: fileURL).perform())
            case .fileRead:
                view.display(operation: FileReadOperation(sourceURL: fileURL).perform())
            case .fileWrite:
                print("Content to write >> ")
                let content = readLine()
                view.display(operation: FileWriteOperation(sourceURL: fileURL, content: content).perform())
            case .back:
                break menuLoop
            case nil:
                print("Please choose valid menu choice")
            }
        }
    }
}
