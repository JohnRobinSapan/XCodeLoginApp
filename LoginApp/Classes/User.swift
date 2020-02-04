//
//  User.swift
//  LoginApp
//
//  Created by John on 2020-02-03.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class User: NSObject {
    
    var username : String = ""
    var email : String = ""
    var address : String = ""
    var password : String = ""

    
    func initWithData(username : String, email : String, address : String, password : String) {
        self.username = username
        self.email = email
        self.address = address
        self.password = password
    }
}
