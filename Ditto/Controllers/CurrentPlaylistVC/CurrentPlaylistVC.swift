//
//  CurrentPlaylistVC.swift
//  Ditto
//
//  Created by Melanie Cooray on 3/16/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

class CurrentPlaylistViewController: UIViewController {
    
    var customSC: UISegmentedControl!
    var codeLabel: UILabel!
    var playlistName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        initUI()
    }
    
}
