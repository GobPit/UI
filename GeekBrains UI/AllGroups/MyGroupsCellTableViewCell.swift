//
//  MyGroupsCellTableViewCell.swift
//  GeekBrains UI
//
//  Created by Anton Shesternin on 09/03/2019.
//  Copyright © 2019 Mad Brains. All rights reserved.
//

import UIKit

class MyGroupsCellTableViewCell: UITableViewCell {

    @IBOutlet weak var myGroupName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
