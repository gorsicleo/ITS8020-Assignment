//
//  main.swift
//  ITS8020-Assignment
//
//  Created by Leo Goršić on 29.11.2023..
//

import Foundation

var currentSelection: MainMenuItem?

while true {

    print("""
    \n
        File manager:
        Please select options from menu
            1. Disk space
            2. Disk information
            3. File manager menu
        Type number in front of the option below:
    """)

    let userInput = readLine() ?? ""
    currentSelection = MainMenuItem(rawValue: Int(userInput) ?? -1)

    switch currentSelection {
    case .storageSpace:
        let controller = StorageSpaceController()
        controller.start()
    case .storageInformation:
        let controller = StorageInfromationController()
        controller.start()
    case .fileManagerMenu:
        let controller = FileManagerController()
        controller.start()
    case nil:
        print("Please choose valid choice")
    }
}



