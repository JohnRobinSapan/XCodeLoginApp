//
//  RegisterViewController.swift
//  LoginApp
//
//  Created by John on 2020-02-03.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet var txUsername : UITextField!
    @IBOutlet var txEmail : UITextField!
    @IBOutlet var txAddress : UITextField!
    @IBOutlet var txPassword : UITextField!
    var user = User()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func createUser(sender: UIButton) {
        
        let username = txUsername.text!
        let email = txEmail.text!
        let address = txAddress.text!
        let password = txPassword.text!
        
        user.initWithData(username: username, email: email, address: address, password: password)
        print("Creating user")
        self.performSegue(withIdentifier: "DetailSegue", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Preparing for segue \(segue.identifier)")
        if segue.identifier == "DetailSegue" {
            let loginViewController = segue.destination as! LoginViewController
            loginViewController.user = self.user
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
