//
//  PlaylistsVC - UISetup.swift
//  Ditto
//
//  Created by Sam Lee on 4/6/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

extension PlaylistsViewController {
    
    func setUpBackground() {
        backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height * 2 / 3))
        backgroundImage = UIImageView(frame: view.frame)
        backgroundImage.image = UIImage(named: "playlistbackground")
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.alpha = 0.5
        view.addSubview(backgroundImage)
    }
    
    func setUpTable() {
        tableView = UITableView(frame: view.frame)
        tableView.register(PlaylistViewCell.self, forCellReuseIdentifier: "tableCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableView.rowHeight = view.frame.height/8
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: view.frame.height/8, right: 0)
        view.addSubview(tableView)
    }
    
    
    
}
