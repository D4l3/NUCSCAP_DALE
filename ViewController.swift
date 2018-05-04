//
//  ViewController.swift
//  FreshCatchPresentation
//
//  Created by Mike Dale on 2/13/18.
//  Copyright © 2018 Mike Dale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Segue using the Find Fish button to transition to GoogleMAPS
    @IBAction func mapButton(_ sender: Any) {
        performSegue(withIdentifier: "menuToMap", sender: self)    }
    
    //Segue using the List Fish button to move into the Table View
    @IBAction func addFishButton(_ sender: Any) {
        performSegue(withIdentifier: "menuToFish", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Getting rid of the plain white background
        view.backgroundColor = UIColor.black
        
    }
}

