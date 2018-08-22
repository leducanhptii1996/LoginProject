//
//  BasicLessonTableViewCell.swift
//  Login
//
//  Created by Apple on 8/21/18.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class BasicLessonTableViewCell: UITableViewCell {
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var mLabel: UILabel!
    
    func setData(title: String) {
        mLabel.text = title
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
