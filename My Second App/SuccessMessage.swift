//
//  SuccessMessage.swift
//  My Second App
//
//  Created by Denis Tatar on 2019-08-27.
//  Copyright © 2019 Denis Tatar. All rights reserved.
//

import Foundation

import UIKit

class SuccessMessage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func returnToDiagnostics(_ sender: Any) {
        self.performSegue(withIdentifier: "toOverviewSegue", sender: self)
    }
    
    
}
