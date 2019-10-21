//
//  ViewController.swift
//  My Second App
//
//  Created by Denis Tatar on 2019-07-26.
//  Copyright © 2019 Denis Tatar. All rights reserved.
//

import UIKit
// import FirebaseUI
import FirebaseUI

class HomeViewController: UIViewController {
    
    
    @IBAction func signIn(_ sender: UIButton) {
       
        // Get the default auth UI project
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else {
            // Log the error
            return
        }
        
        // Set ourselves as a delegate
        authUI?.delegate = self
        authUI?.providers = [FUIEmailAuth()]
        
        // Get a reference to the auth UI view controller
        let authViewController = authUI!.authViewController()
        
        // Show it
        present(authViewController, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("View has loaded")
        
    }
}

extension HomeViewController: FUIAuthDelegate{
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        
        /*
        // Check if there was an error
        guard error == nil else {
            // Log the error
            return
        }*/
        
        if error != nil {
            // Log the error
            return
        }
        
        // Checking if the user already has an account through their UID
        // authDataResult?.user.uid
        
        // Sending user to their car diagnostics if they signed in successfully
        performSegue(withIdentifier: "OverviewViewSegue", sender: self)
        
        
    }
}

