//
//  SingUpVC-uisetup.swift
//  Ditto
//
//  Created by Melanie Cooray on 3/29/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

extension SignUpVC {
    
    func initUI() {
        setupNameTextField()
        setupEmailTextField()
    }
    
    func setupNameTextField() {
        nameTextField = SkyFloatingLabelTextField(frame: CGRect(x: 30, y: 100, width: view.frame.width - 100, height: 100))
        nameTextField.placeholder = "Full Name"
        nameTextField.title = "Full Name"
        nameTextField.errorColor = UIColor.red
        nameTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        self.view.addSubview(nameTextField)
    }
    
    func setupEmailTextField() {
        emailTextField = SkyFloatingLabelTextField(frame: CGRect(x: 30, y: 200, width: view.frame.width - 100, height: 100))
        emailTextField.placeholder = "Email"
        emailTextField.title = "Email Address"
        emailTextField.errorColor = UIColor.red
        emailTextField.addTarget(self, action: #selector(emailTextFieldDidChange(_:)), for: .editingChanged)
        self.view.addSubview(emailTextField)
    }
    
    func setupPasswordTextField() {
        passwordTextField = SkyFloatingLabelTextField(frame: CGRect(x: 30, y: 200, width: view.frame.width - 100, height: 100))
        passwordTextField.placeholder = "Password"
        passwordTextField.title = "Password"
        passwordTextField.errorColor = UIColor.red
        passwordTextField.addTarget(self, action: #selector(emailTextFieldDidChange(_:)), for: .editingChanged)
        self.view.addSubview(emailTextField)
    }
    
    @objc func textFieldDidChange(_ textfield: UITextField) {
        if let text = textfield.text {
            if let floatingLabelTextField = textfield as? SkyFloatingLabelTextField {
                if(text.count < 5 || !text.contains("@")) {
                    floatingLabelTextField.errorMessage = "Invalid email"
                }
                else {
                    // The error message will only disappear when we reset it to nil or empty string
                    floatingLabelTextField.errorMessage = ""
                }
            }
        }
    }
    
    @objc func emailTextFieldDidChange(_ textfield: UITextField) {
        if let text = textfield.text {
            if let floatingLabelTextField = textfield as? SkyFloatingLabelTextField {
                if(text.count < 5 || !text.contains("@")) {
                    floatingLabelTextField.errorMessage = "Invalid email"
                }
                else {
                    // The error message will only disappear when we reset it to nil or empty string
                    floatingLabelTextField.errorMessage = ""
                }
            }
        }
    }
    
}
