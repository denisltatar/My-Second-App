//
//  ContactMechanic.swift
//  My Second App
//
//  Created by Denis Tatar on 2019-08-26.
//  Copyright © 2019 Denis Tatar. All rights reserved.
//

import UIKit

class ContactMechanic: UIViewController {

    
    @IBOutlet weak var fullNameField: UITextField!
    
    @IBOutlet weak var emailAddress: UITextField!
    
    @IBOutlet weak var messageField: UITextField!
    
    @IBOutlet weak var textViewField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // print("View has loaded")
        
        
        fullNameField.delegate = self
        emailAddress.delegate = self
        messageField.delegate = self
    }
    
    
    @IBAction func sendMessage(_ sender: Any) {
        // First we need to render the text that was placed in by the user
        textViewField.text = "Full name: \(fullNameField.text!)\nEmail Address: \(emailAddress.text!)\nMessage: \(messageField.text!)";
        
    }
}
    
    extension  ContactMechanic : UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            // When textfield is tapped, the textfield becomes a first responders,
            // waiting for the user's input...
            // When resigning, we are dismissing the action hierachry and it will
            // disappear from the view
            textField.resignFirstResponder()
            return true;
        }
    }
    

