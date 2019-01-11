//
//  SubtitleCell.swift
//  ReuseCell0
//
//  Created by duycuong on 1/11/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class SubtitleCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    // Hàm này chuẩn bị trước khi reuse: reset lại cell trước khi reuse
    
    override func prepareForReuse() {
        textLabel?.text = ""
        detailTextLabel?.text = ""
        backgroundColor = UIColor.white
        
    }
    
}
