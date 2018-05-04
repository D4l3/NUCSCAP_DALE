//
//  OffshoreTableViewController.swift
//  FreshCatchPresentation
//
//  Created by Mike Dale on 3/24/18.
//  Copyright © 2018 Mike Dale. All rights reserved.
//


import UIKit


class OffshoreTableViewController: UITableViewController {
    
    // MARK: - Table view data source
    //Describes the number of sections in the Table View
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Number of rows in each section of the Table View. Change return value to increase or decrease.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    //Header title for the entire Table View
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Offshore Fish for Sale"
    }
    
    //Fish description and listing
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell2", for: indexPath)
        
        cell.textLabel?.text? = "Fish \(indexPath.row + 1): 300lb Bluefin Tuna"
        cell.detailTextLabel?.text = "Contact Mr. Variable at: (781) 789-1234"
        
        return cell
    }
    
    
    //Table view code adapted from tutorial:
    //https://www.ralfebert.de/ios-examples/uikit/uitableviewcontroller/
}
