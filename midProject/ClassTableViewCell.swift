//
//  ClassOneTableViewCell.swift
//  midProject
//
//  Created by csie on 2018/5/3.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ClassTableViewCell: UITableViewCell {

    @IBOutlet var classImageView: UIImageView!
    @IBOutlet var classLabelView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
