//
//  Custom2TableViewCell.swift
//  wjm2238_assignment5
//
//  Created by Will Morphy on 2/10/18.
//  Copyright © 2018 Will Morphy. All rights reserved.
//

import UIKit

class Custom2TableViewCell: UITableViewCell {
    
    @IBOutlet weak var scientificNameLabel: UILabel!
    @IBOutlet weak var classNameLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
