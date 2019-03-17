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
        
    }
    
    func setupLaunchButton() {
        launchButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        launchButton.center = CGPoint(x: view.frame.width/2, y: 400)
    }
    
}
