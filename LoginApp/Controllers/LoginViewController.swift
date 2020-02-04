//
//  ViewController.swift
//  LoginApp
//
//  Created by John on 2020-02-03.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var txUsername : UITextField!
    @IBOutlet var txPassword : UITextField!
    
    var user : User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if user != nil {
            txUsername.text = user.username
            txPassword.text = user.password
        }
    }
    
    
    @IBAction func loginValidation(sender: UIButton) {
        let username = txUsername.text!
        let password = txPassword.text!
        var message : String = ""
        
        
        
        
        if user == nil {
            message = "No users registered!"
        } else {
            if username != user.username || password != user.password {
                message = "Username or password is incorrect!"
            }
            else {
                 self.performSegue(withIdentifier: "WebSegue", sender: self)
            }
        }
        
        let alertbox = UIAlertController(title: "Warning", message: message, preferredStyle: .alert)
        
        let noAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let yesAction = UIAlertAction(title: "Register", style: .default) { (alert) in
            self.performSegue(withIdentifier: "RegisterSegue", sender: self)
            // self.dismiss(animated: true, completion: nil)
        }
        alertbox.addAction(noAction)
        alertbox.addAction(yesAction)
        present(alertbox, animated: true)
    }
    
    
    @IBAction func unwindToLogin(sender : UIStoryboardSegue) {
        print("Unwinding")
    }
    
}

