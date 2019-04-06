//
//  EnterCodeVC - UISetup.swift
//  Ditto
//
//  Created by Candace Chiang on 4/6/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

extension EnterCodeViewController {
    func setUpLabels() {
        tagLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width * 2/3, height: view.frame.height/10))
        tagLabel.center = CGPoint(x: view.frame.width/2, y: view.frame.height/3)
        tagLabel.text = "find a playlist"
        tagLabel.font = UIFont(name: "Roboto-Light", size: 17)
        view.addSubview(tagLabel)
    }
    
    func setUpInteractive() {
        codeInput = UITextField(frame: CGRect(x: 0, y: 0, width: view.frame.width * 3/4, height: view.frame.height/8))
        codeInput.center = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        codeInput.font = UIFont(name: "Roboto-Regular", size: 16)
        codeInput.textAlignment = .center
        codeInput.placeholder = "PLAYLIST CODE"
        codeInput.textColor = UIColor(hexString: "#BF95DC")
        codeInput.layer.borderColor = UIColor(hexString: "#BF95DC").cgColor
        codeInput.layer.cornerRadius = 7.0
        codeInput.keyboardType = UIKeyboardType.numberPad
        codeInput.addTarget(self, action: #selector(codeEntered), for: .allEditingEvents)
        view.addSubview(codeInput)
        
        searchButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width/4, height: view.frame.height/15))
        searchButton.center = CGPoint(x: view.frame.width/2, y: view.frame.height * 2/3)
        searchButton.setTitle("Search", for: .normal)
        searchButton.setTitleColor(.white, for: .normal)
        searchButton.backgroundColor = UIColor(hexString: "#7383C5")
        searchButton.titleLabel!.font = UIFont(name: "Roboto-Bold", size: 13)
        searchButton.layer.cornerRadius = 5.0
        searchButton.addTarget(self, action: #selector(filter), for: .touchUpInside)
        view.addSubview(searchButton)
    }
}
