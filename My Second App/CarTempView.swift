//
//  CarTempView.swift
//  My Second App
//
//  Created by Denis Tatar on 2019-08-22.
//  Copyright © 2019 Denis Tatar. All rights reserved.
//
import UIKit

class CarTempView: UIViewController {
    
    var carTemp = 15;
    
    // Our actually number being shown on our app
    @IBOutlet weak var temperatureNumber: UILabel!
    
    // Our "Set Temperature" button
    @IBAction func setTempPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "OverviewViewController", sender: self)
    }
    
    @IBAction func backToOverview(_ sender: Any) {
        self.performSegue(withIdentifier: "OverviewViewController", sender: self)
    }
    
    // If the plus button is pressed, we increase carTemp
    @IBAction func plusTemp(_ sender: Any) {
        carTemp += 1;
        temperatureNumber.text = String(carTemp);
    }
    
    @IBAction func minusTemp(_ sender: Any) {
        carTemp -= 1;
        temperatureNumber.text = String(carTemp);
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}
