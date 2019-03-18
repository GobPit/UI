//
//  MyGroupsCellTableViewCell.swift
//  GeekBrains UI
//
//  Created by Anton Shesternin on 09/03/2019.
//  Copyright © 2019 Mad Brains. All rights reserved.
//

import UIKit

class MyGroupsCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myGroupName: UILabel! {
        didSet {
            self.myGroupName.textColor = UIColor.black
        }
    }
    
    @IBOutlet weak var myGroupLogo: UIImageView! {
        didSet {
            self.myGroupLogo.layer.borderColor = UIColor.white.cgColor
            self.myGroupLogo.layer.borderWidth = 2
        }
    }
    
    func configure (group: String, emblem: UIImage) {
        self.myGroupName.text = group
        self.myGroupLogo.image = emblem
        self.backgroundColor = UIColor.white
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.myGroupName.text = nil
        self.myGroupLogo.image = nil
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        self.myGroupLogo.clipsToBounds = true
        self.myGroupLogo.layer.cornerRadius = self.myGroupLogo.frame.width / 2
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
