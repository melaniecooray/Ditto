//
//  PlaylistViewCell.swift
//  Ditto
//
//  Created by Sam Lee on 4/6/19.
//  Copyright © 2019 Melanie Cooray. All rights reserved.
//

import UIKit

class PlaylistViewCell: UITableViewCell {
    
    var playlistPhoto: UIImageView!
    var playlistName: UILabel!
    var playlistLastPlayed: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func initCellFrom(size: CGSize) {
        playlistPhoto = UIImageView(frame: CGRect(x: 0, y: 0, width: size.width/4, height: size.height * 3/4))
        playlistPhoto.center = CGPoint(x: size.width/4, y: size.height/2)
        playlistPhoto.contentMode = .scaleAspectFit
        contentView.addSubview(playlistPhoto)
        
        playlistName = UILabel(frame: CGRect(x: 0, y: 0, width: size.width/2, height: size.height/2))
        playlistName.center = CGPoint(x: size.width * 2/3, y: size.height/3)
        playlistName.adjustsFontSizeToFitWidth = true
        playlistName.font = UIFont(name: "SourceSansPro-Bold", size: 20)
        playlistName.text = "vibe station"
        contentView.addSubview(playlistName)
        
        playlistLastPlayed = UILabel(frame: CGRect(x: 0, y: 0, width: size.width/3, height: size.height/3))
        playlistLastPlayed.center = CGPoint(x: playlistName.frame.midX, y: size.height * 2/3)
        playlistLastPlayed.font = UIFont(name: "SourceSansPro-Regular", size: 15)
        playlistLastPlayed.layer.masksToBounds = true
        playlistLastPlayed.text = "last played: 17h"
        playlistLastPlayed.layer.cornerRadius = 8
        contentView.addSubview(playlistLastPlayed)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
