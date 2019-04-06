//
//  ConnectVC - UISetup.swift
//  Ditto
//
//  Created by Candace Chiang on 4/6/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

extension ConnectViewController {
    func makeButtons() {
        dummyLogButton = UIButton(frame: CGRect(x: view.frame.width/6, y: view.frame.height/10, width: view.frame.width/4, height: view.frame.height/9))
        dummyLogButton.setTitle("To Login", for: .normal)
        dummyLogButton.layer.cornerRadius = 5.0
        dummyLogButton.backgroundColor = .red
        dummyLogButton.addTarget(self, action: #selector(toLogin), for: .touchUpInside)
        view.addSubview(dummyLogButton)
        
        dummyProfileButton = UIButton(frame: CGRect(x: view.frame.width * 4/6, y: view.frame.height/10, width: view.frame.width/4, height: view.frame.height/9))
        dummyProfileButton.setTitle("To Profile", for: .normal)
        dummyProfileButton.layer.cornerRadius = 5.0
        dummyProfileButton.backgroundColor = .red
        dummyProfileButton.addTarget(self, action: #selector(toTabBar), for: .touchUpInside)
        view.addSubview(dummyProfileButton)
        print("adding dummy buttons")
    }
    
    @objc func toLogin() {
        performSegue(withIdentifier: "toLogin", sender: self)
    }
    
    @objc func toTabBar() {
        performSegue(withIdentifier: "toTabBar", sender: self)
    }
}
