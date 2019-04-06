//
//  SignUpVC.swift
//  Ditto
//
//  Created by Melanie Cooray on 3/16/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class SignUpVC: UIViewController {
    
    var nameTextField: SkyFloatingLabelTextField!
    var emailTextField: SkyFloatingLabelTextField!
    var passwordTextField: SkyFloatingLabelTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
    }

}
