//
//  ClassDetailTextCell.swift
//  midProject
//
//  Created by csie on 2018/6/1.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ClassDetailTextCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel! {
        didSet {
            titleLabel.numberOfLines = 0
        }
    }
    @IBOutlet var detailLabel: UILabel! {
        didSet {
            detailLabel.numberOfLines = 0
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
