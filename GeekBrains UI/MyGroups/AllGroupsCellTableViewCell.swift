//
//  AllGroupsCellTableViewCell.swift
//  GeekBrains UI
//
//  Created by Anton Shesternin on 09/03/2019.
//  Copyright © 2019 Mad Brains. All rights reserved.
//

import UIKit

class AllGroupsCellTableViewCell: UITableViewCell {

   
    
    @IBOutlet weak var groupName: UILabel! {
        didSet {
            self.groupName.textColor = UIColor.black
        }
    }
    @IBOutlet weak var groupLogo: UIImageView! {
        didSet {
            self.groupLogo.layer.borderColor = UIColor.white.cgColor
            self.groupLogo.layer.borderWidth = 2
        }
    }
    func configure (group: String, emblem: UIImage) {
        self.groupName.text = group
        self.groupLogo.image = emblem
        self.backgroundColor = UIColor.white
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.groupName.text = nil
        self.groupLogo.image = nil
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        self.groupLogo.clipsToBounds = true
        self.groupLogo.layer.cornerRadius = self.groupLogo.frame.width / 2
    }
    
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
