//
//  ClassDetailIconCell.swift
//  midProject
//
//  Created by csie on 2018/6/1.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ClassDetailIconCell: UITableViewCell {

    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var iconTitle: UILabel! {
        didSet {
            iconTitle.numberOfLines = 0
        }
    }

    @IBOutlet var iconLink: UILabel! {
        didSet {
            iconLink.numberOfLines = 0
        }
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
