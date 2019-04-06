//
//  LoginVC - UISetup.swift
//  Ditto
//
//  Created by Melanie Cooray on 3/16/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

extension LoginViewController {
    
    func initUI() {
        setupLogo()
        setupEmailTextField()
        setupPasswordTextField()
        setupLoginButton()
        setupSignUp()
    }
    
    func setupLogo() {
        logo = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        logo.center = CGPoint(x: view.frame.width/2, y: 200)
        logo.image = UIImage(named: "logo")
        view.addSubview(logo)
    }
    
    func setupEmailTextField() {
        emailTextField = SkyFloatingLabelTextField(frame: CGRect(x: 50, y: logo.frame.maxY - 50, width: view.frame.width - 100, height: 100))
        emailTextField.placeholder = "Email"
        emailTextField.title = "Email Address"
        emailTextField.errorColor = UIColor.red
        emailTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        self.view.addSubview(emailTextField)
    }
    
    func setupPasswordTextField() {
        passwordTextField = SkyFloatingLabelTextField(frame: CGRect(x: 50, y: emailTextField.frame.maxY + 10, width: view.frame.width - 100, height: 100))
        passwordTextField.placeholder = "Password"
        passwordTextField.title = "Password"
        passwordTextField.errorColor = UIColor.red
        passwordTextField.addTarget(self, action: #selector(passwordTextFieldDidChange(_:)), for: .editingChanged)
        self.view.addSubview(passwordTextField)
    }
    
    func setupLoginButton() {
        loginButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width/2, height: 50))
        loginButton.center = CGPoint(x: view.frame.width/2, y: passwordTextField.frame.maxY + 50)
        loginButton.setTitle("Login", for: .normal)
        loginButton.layer.cornerRadius = 10
        loginButton.backgroundColor = UIColor(hexString: "7383C5")
        view.addSubview(loginButton)
    }
    
    func setupSignUp() {
        signUpText = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width/2, height: 50))
        signUpText.center = CGPoint(x: view.frame.width/2 - 25, y: loginButton.frame.maxY + 50)
        signUpText.text = "Don't have an account?"
        view.addSubview(signUpText)
        signUpButton = UIButton(frame: CGRect(x: view.frame.width/2 - 5, y: signUpText.frame.minY, width: 200, height: 50))
        signUpButton.setTitle("Sign Up!", for: .normal)
        signUpButton.setTitleColor(UIColor(hexString: "7383C5"), for: .normal)
        signUpButton.addTarget(self, action: #selector(toSignUp), for: .touchUpInside)
        view.addSubview(signUpButton)
    }
    
    // This will notify us when something has changed on the textfield
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
    
    @objc func passwordTextFieldDidChange(_ textfield: UITextField) {
        if let text = textfield.text {
            if let floatingLabelTextField = textfield as? SkyFloatingLabelTextField {
                if(text.count < 6) {
                    floatingLabelTextField.errorMessage = "Invalid password"
                }
                else {
                    // The error message will only disappear when we reset it to nil or empty string
                    floatingLabelTextField.errorMessage = ""
                }
            }
        }
    }
    
    @objc func toSignUp() {
        performSegue(withIdentifier: "toSignUp", sender: self)
    }
    
}
