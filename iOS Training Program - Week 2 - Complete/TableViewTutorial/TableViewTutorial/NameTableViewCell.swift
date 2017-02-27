//
//  NameTableViewCell.swift
//  TableViewTutorial
//
//  Created by Eliot Han on 1/28/17.
//  Copyright © 2017 Eliot Han. All rights reserved.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    var nameLabel: UILabel!   //Our Name Label

    
    
    //When do you think this is called?
    override func awakeFromNib() {
        super.awakeFromNib()
    
        //Our Name Label
        nameLabel = UILabel(frame: CGRect(x: 20, y: contentView.frame.height * (1/3), width: 150, height: contentView.frame.height * (1/3)))
        nameLabel.textColor = UIColor.black
        contentView.addSubview(nameLabel)
    
    }

    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
