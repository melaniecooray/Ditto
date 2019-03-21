//
//  LaunchVC-uisetup.swift
//  Ditto
//
//  Created by Melanie Cooray on 3/16/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

extension LaunchVC {
    
    func initUI() {
        setupSubtitle()
    }
    
    func setupSubtitle() {
        subtitle = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        subtitle.center = CGPoint(x: view.frame.width/2, y: 500)
        subtitle.text = "Experience more together"
        subtitle.font = UIFont(name: "Roboto", size: 15)
        subtitle.textAlignment = .center
        view.addSubview(subtitle)
    }
    
}
