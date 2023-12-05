# Mac Terminal File Manager

This is a simple Mac terminal program that provides general disk information and basic file manipulation options.

## Getting Started

1. Clone the repository:

    ```bash
    git clone https://github.com/gorsicleo/ITS8020-Assignment
    cd ITS8020-Assignment
    ```

2. Open the Xcode project:

    ```bash
    open ITS8020-Assignment.xcodeproj
    ```

3. Build and run the project in Xcode.

## Usage

### Main menu
Firstly user is presented with main menu:
```
File manager:
Please select options from the menu
    1. Disk space
    2. Disk information
    3. File manager menu
Type the number in front of the option below:
```
`Disk space` lists current drives on this mac and displays used and free space for every drive\
`Disk information` lists current drives on this mac and displays is it read only and internal drive\
`File manager menu` redirects user to separate menu for basic file operation

### File manager menu
```
File manager:
Please select options from the menu
    1. File information
    2. File copy
    3. File delete
    4. File read
    5. File write
    6. Return to main menu
Type the number in front of the option below:
```
## Features

### Disk Space

Prints the total and available space for each mounted drive.

### Disk Information

Provides detailed information about each mounted drive.

### File Information

Displays information about a specified file, such as size, creation date, and modification date.

### File Copy

Copies a file from one location to another.

### File Delete

Deletes a specified file.

### File Read

Reads and displays the content of a specified file.

### File Write

Writes content to a specified file.

### Return to Main Menu

Returns to the main menu from any sub-menu.

## LICENCE

MIT License

Copyright (c) 2023. Leo Goršić

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

