//
//  OverviewViewController.swift
//  My Second App
//
//  Created by Denis Tatar on 2019-08-22.
//  Copyright © 2019 Denis Tatar. All rights reserved.
//

import UIKit

class OverviewViewController: UIViewController {
    @IBAction func contactMechanicButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toContactMechanic", sender: self)
    }
    
    @IBAction func changeCarTemp(_ sender: Any) {
        self.performSegue(withIdentifier: "toCarTemp", sender: self)
    }
    @IBAction func closeButton(_ sender: Any) {
        print("Close is pressed")
        self.performSegue(withIdentifier: "BackToContinue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}
