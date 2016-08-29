//
//  PlaylistTableViewCell.swift
//  Playlist
//
//  Created by Nathan on 8/23/16.
//  Copyright © 2016 FalconeDevelopment. All rights reserved.
//

import UIKit

class PlaylistTableViewCell: UITableViewCell {

    @IBOutlet weak var topLeftImageView: UIImageView!
    @IBOutlet weak var topRightImageView: UIImageView!
    @IBOutlet weak var bottomLeftImageView: UIImageView!
    @IBOutlet weak var bottomRightImageView: UIImageView!
    @IBOutlet var imageViews: [UIImageView]!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var songCountLabel: UILabel!
    @IBOutlet weak var memberCountLabel: UILabel!
    
}
