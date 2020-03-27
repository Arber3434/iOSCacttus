//
//  SignUpViewController.swift
//  Projekti 1 - Arber Asllani
//
//  Created by Cacttus Education 01 on 22.3.20.
//  Copyright © 2020 Cacttus Education 01. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
@IBOutlet weak var firstNameTextField: UITextField!
@IBOutlet weak var lastNameTextField: UITextField!
@IBOutlet weak var phoneNrTextField: UITextField!
@IBOutlet weak var userNameTextField: UITextField!
@IBOutlet weak var passWordTextField: UITextField!
@IBOutlet weak var signUpButton: UIButton!

var userNameText = ""
    
override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
@IBAction func signUpClicked(_ sender: Any) {
    self.userNameText = userNameTextField.text!
performSegue(withIdentifier: "userNamePassed", sender: self)
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! HomeViewController
        vc.userName = self.userNameText
    }
}
    
