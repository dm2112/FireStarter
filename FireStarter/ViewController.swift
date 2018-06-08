//
//  ViewController.swift
//  HouseParty
//
//  Created by Daniel Morrison on 6/4/18.
//  Copyright © 2018 SaMo. All rights reserved.
//

import UIKit
import GoogleSignIn
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController, GIDSignInUIDelegate, FBSDKLoginButtonDelegate {
    
    @IBOutlet weak var signBtn: UIButton!
    @IBOutlet weak var houseLbl: UILabel!
    @IBOutlet weak var signUpView: UIView!
    @IBOutlet weak var logBtn: UIButton!
    @IBOutlet weak var googBtn: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        
        let LoginBtn = FBSDKLoginButton()
        view.addSubview(LoginBtn)
        LoginBtn.frame = CGRect(x: 16, y: 50, width: view.frame.width - 32, height: 50)
        
        LoginBtn.delegate = self
        // Uncomment to automatically sign in the user.
        //GIDSignIn.sharedInstance().signInSilently()
        
    
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
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("did log out of FaceBook")
    }
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil {
            print(error)
            return
        }
        
        print("Succesfully Logged in with facebook")
        
    }


}

