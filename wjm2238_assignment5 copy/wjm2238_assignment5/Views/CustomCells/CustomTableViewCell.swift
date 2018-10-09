//
//  CustomTableViewCell.swift
//  wjm2238_assignment5
//
//  Created by Will Morphy on 2/10/18.
//  Copyright © 2018 Will Morphy. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    //IBoutlets
    @IBOutlet weak var mainImageViewForNamePhotoCell: UIImageView!
    @IBOutlet weak var labelViewForNamePhotoCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mainImageViewForNamePhotoCell.layer.cornerRadius = 10
        mainImageViewForNamePhotoCell.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //self.layer.cornerRadius = 10
        //self.layer.shadowRadius = 6
        //self.layer.shadowOpacity = 0.8
        //self.layer.shadowOffset = CGSize(width: 2, height: 4)
        //self.clipsToBounds = false
    }
}
