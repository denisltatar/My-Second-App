//
//  ViewController.swift
//  My Second App
//
//  Created by Denis Tatar on 2019-07-26.
//  Copyright © 2019 Denis Tatar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    
    @IBAction func continueButton(_ sender: Any) {
        print("Button Pressed")
        self.performSegue(withIdentifier: "OverviewViewSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("View has loaded")
        
    }

    
    
}

