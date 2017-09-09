//
//  TableViewCell.swift
//  NestedScrollView
//
//  Created by Isaac Kim on 9/6/17.
//  Copyright © 2017 Isaac Kim. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    
   
    @IBOutlet weak var dataLabel: UILabel!
   
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
