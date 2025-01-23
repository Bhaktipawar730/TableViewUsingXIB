# TableViewWithXIB

TableViewWithXIB is an iOS application developed in Swift that demonstrates the implementation of a dynamic table view using custom-designed cells from a XIB file. This project highlights best practices for working with `UITableView` and custom UI components in UIKit.

## Overview

The application features:
- A dynamic table view that displays a list of fruit names.
- Custom table view cells designed using a separate XIB file.
- Clean implementation of `UITableViewDelegate` and `UITableViewDataSource` protocols.

## Key Features

- **Custom Table View Cell**: Utilizes a reusable cell design with a XIB file to enhance modularity and reusability.
- **Dynamic Data Handling**: Populates the table view with data from a predefined array.
- **Delegate and Data Source Implementation**: Demonstrates proper usage of `UITableView` protocols for handling data and user interactions.

## Project Structure

### ViewController
The `ViewController` class manages the table view and serves as its data source and delegate. It includes:
- Registration of the XIB file for the table view cell.
- Implementation of the `UITableViewDelegate` and `UITableViewDataSource` methods:
  - `tableView(_:numberOfRowsInSection:)`: Defines the number of rows based on the `fruit` array.
  - `tableView(_:cellForRowAt:)`: Configures each cell with the corresponding fruit name from the array.

### TableViewCell
The `TableViewCell` class defines the layout and functionality of the custom table view cell. Its label is connected via an `IBOutlet`, enabling dynamic updates to the cell content.

### TableViewCell.xib
The XIB file contains the visual design of the custom table view cell, providing a clean separation of UI and logic.
