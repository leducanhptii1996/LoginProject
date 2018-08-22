//
//  CellBasic_TableViewCell.swift
//  Login
//
//  Created by Apple on 8/21/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class CellBasic_TableViewCell: UITableViewCell {

    @IBOutlet weak var imgIconBaiHoc: UIImageView!
    
    @IBOutlet weak var lbl_baihoc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
