//
//  NewPlaylistVC - UISetup.swift
//  Ditto
//
//  Created by Sam Lee on 4/6/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import Foundation

extension NewPlaylistViewController {
    
    func newPlaylistSetUp() {
    
        
        newPlaylistTextField = UITextField(frame: CGRect(x: 0, y: 0, width: view.frame.width * 3/5, height: view.frame.height/16))
        newPlaylistTextField.center = CGPoint(x: view.frame.width * 0.5, y: view.frame.height * 2.95/5)
        newPlaylistTextField.font = UIFont(name: "Roboto-Light", size: 28)
        newPlaylistTextField.textAlignment = .center
        newPlaylistTextField.textColor = UIColor(hexString: "#ffffff")
        newPlaylistTextField.layer.borderWidth = 1.0
        newPlaylistTextField.layer.borderColor = UIColor(hexString: "#ffffff").cgColor
        newPlaylistTextField.layer.cornerRadius = 7.0
        //codeInput.keyboardType = UIKeyboardType.numberPad
        newPlaylistTextField.attributedPlaceholder = NSAttributedString(string: "playlist name",
                                                             attributes: [NSAttributedString.Key.foregroundColor: UIColor(hexString: "#ffffff")])
        view.addSubview(newPlaylistTextField)
        
        createButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width * 3/5, height: 50))
        createButton.center = CGPoint(x: view.frame.width/2, y: view.frame.height * 3.5/5)
        createButton.setTitle("Create", for: .normal)
        createButton.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 25)
        createButton.setTitleColor(UIColor(hexString: "7383C5"), for: .normal)
        createButton.layer.cornerRadius = 10
        createButton.backgroundColor = UIColor(hexString: "ffffff")
        createButton.addTarget(self, action: #selector(createButtonClicked), for: .touchUpInside)
        view.addSubview(createButton)
        
    }
    
    func setUpImagePicker() {
        imagePicker = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width * 4/5, height: view.frame.height/4))
        imagePicker.center = CGPoint(x: view.frame.width/2, y: view.frame.height * (2/5))
        imagePicker.setImage(UIImage(named: "defaultplaylist"), for: .normal)
        imagePicker.imageView?.contentMode = .scaleAspectFit
        imagePicker.addTarget(self, action: #selector(openImageOptions), for: .touchUpInside)
        view.addSubview(imagePicker)
        
        imageView = UIImageView(frame: CGRect(x: view.frame.width * 0.52, y: imagePicker.frame.maxY - view.frame.height/20, width: view.frame.width/8, height: view.frame.width/8))
        imageView.image = UIImage(named: "click")
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
    }

    
}