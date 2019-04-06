//
//  LoginVC.swift
//  Ditto
//
//  Created by Melanie Cooray on 3/16/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class LoginVC: UIViewController {
    
    var emailTextField : SkyFloatingLabelTextField!
    var passwordTextField : SkyFloatingLabelTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }

}
