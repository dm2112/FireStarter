//
//  ViewController.swift
//  HouseParty
//
//  Created by Daniel Morrison on 6/4/18.
//  Copyright © 2018 SaMo. All rights reserved.
//

import UIKit
import GoogleSignIn 

class ViewController: UIViewController, GIDSignInUIDelegate {
    
    @IBOutlet weak var signBtn: UIButton!
    @IBOutlet weak var houseLbl: UILabel!
    @IBOutlet weak var signUpView: UIView!
    @IBOutlet weak var logBtn: UIButton!
    @IBOutlet weak var googBtn: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        // Uncomment to automatically sign in the user.
        //GIDSignIn.sharedInstance().signInSilently()
        
        // TODO(developer) Configure the sign-in button look/feel
        // ...
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func signUpB(sender: UIButton){
        signBtn.isHidden = true
        logBtn.isHidden = true
        houseLbl.isHidden = true
        signUpView.isHidden = false
        googBtn.isHidden = false
        
    }
    
    @IBAction func didTapSignOut(_ sender: UIButton) {
        GIDSignIn.sharedInstance().signOut()
    }


}

