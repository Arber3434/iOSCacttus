//
//  ViewController.swift
//  Projekti 1 - Arber Asllani
//
//  Created by Cacttus Education 01 on 22.3.20.
//  Copyright © 2020 Cacttus Education 01. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    var userNameText = ""
    
    @IBAction func loginClicked(_ sender: Any) {
        
        self.userNameText = userName.text!
        performSegue(withIdentifier: "loginUserName", sender: self)
        }
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if(segue.identifier == "loginUserName") {
    let homeVC = segue.destination as! HomeViewController
    homeVC.userName = self.userNameText
        }
    }

    @IBAction func signUpClicked(_ sender: Any) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

