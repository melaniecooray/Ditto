//
//  CurrentPlaylistVC - UISetup.swift
//  Ditto
//
//  Created by Melanie Cooray on 4/6/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

extension CurrentPlaylistViewController {
    
    func initUI() {
        setupCode()
        setupPlaylistName()
        setupControl()
    }
    
    func setupCode() {
        codeLabel = UILabel(frame: CGRect(x: 50, y: 50, width: view.frame.width/2, height: 100))
        codeLabel.text = "CODE: 67J91U"
        codeLabel.font = UIFont(name: "Roboto-Bold", size: 30)
        codeLabel.textColor = UIColor(hexString: "7383C5")
        codeLabel.layer.borderColor = UIColor.black.cgColor
        codeLabel.layer.borderWidth = CGFloat(2.0)
        view.addSubview(codeLabel)
    }
    
    func setupPlaylistName() {
        playlistName = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width/2, height: 50))
        playlistName.center = CGPoint(x: view.frame.width/2, y: codeLabel.frame.maxY + 50)
        playlistName.text = "Playlist: vibe station"
        playlistName.font = UIFont(name: "Roboto-Bold", size: 15)
        playlistName.textColor = UIColor(hexString: "7383C5")
        view.addSubview(playlistName)
    }
    
    func setupControl() {
        let items = ["Chat","Lyrics"]
        customSC = UISegmentedControl(items: items)
        customSC.frame = CGRect(x: 0, y: 0, width: 200, height: 25)
        customSC.center = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        customSC.selectedSegmentIndex = 0
        customSC.layer.cornerRadius = 5;
        customSC.tintColor = UIColor(hexString: "7383C5")
        view.addSubview(customSC)
    }
    
}
