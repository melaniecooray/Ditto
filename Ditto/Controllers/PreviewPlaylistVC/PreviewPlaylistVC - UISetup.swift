//
//  PreviewPlaylistVC - UISetup.swift
//  Ditto
//
//  Created by Candace Chiang on 4/6/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

extension PreviewPlaylistViewController {
    func setUpBackground() {
        colorBlock = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height * 4/5))
        colorBlock.backgroundColor = UIColor(hexString: "#7383C5")
        view.addSubview(colorBlock)
    }
    
    func setUpLabels() {
        nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width * 2/3, height: view.frame.height/15))
        //nameLabel.center = CGPoint
        nameLabel.font = UIFont(name: "Roboto-Bold", size: 15)
        nameLabel.text = "vibe station"
        nameLabel.textColor = .white
        view.addSubview(nameLabel)
        
    }
}
