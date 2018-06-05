//
//  ViewController.swift
//  HouseParty
//
//  Created by Daniel Morrison on 6/4/18.
//  Copyright © 2018 SaMo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var signBtn: UIButton!
    @IBOutlet weak var houseLbl: UILabel!
    @IBOutlet weak var signUpView: UIView!
    @IBOutlet weak var logBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func signUpB(sender: UIButton){
        signBtn.isHidden = true
        logBtn.isHidden = true
        houseLbl.isHidden = true
        signUpView.isHidden = false
    }


}

