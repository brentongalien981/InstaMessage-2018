//
//  MyTableViewCell.swift
//  Flash Chat
//
//  Created by ops on 2018-01-20.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var UserPhotoImageView: UIImageView!
    @IBOutlet weak var MessageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
