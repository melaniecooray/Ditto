//
//  ProfileVC - UISetup.swift
//  Ditto
//
//  Created by Melanie Cooray on 4/6/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

extension ProfileViewController {
    
    func initUI() {
        setupSignOutButton()
        setupProfilePic()
    }
    
    func setupSignOutButton() {
        signOutButton = UIButton(frame: CGRect(x: 300, y: 50, width: 100, height: 30))
        signOutButton.setTitle("Sign Out", for: .normal)
        signOutButton.setTitleColor(UIColor(hexString: "7383C5"), for: .normal)
        signOutButton.layer.cornerRadius = 10
        view.addSubview(signOutButton)
    }
    
    func setupProfilePic() {
        profilePic = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width/2, height: view.frame.width/2))
        profilePic.center = CGPoint(x: view.frame.width/2, y: 200)
        profilePic.layer.borderWidth = 1
        profilePic.layer.masksToBounds = false
        profilePic.layer.borderColor = UIColor.black.cgColor
        profilePic.layer.cornerRadius = profilePic.frame.height/2
        profilePic.clipsToBounds = true
        view.addSubview(profilePic)
    }
    
}
