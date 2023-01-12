//
//  LikeTableViewCell.swift
//  Tap
//
//  Created by Rabin on 11/01/23.
//

import UIKit

class LikeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var btnDelete: UIButton!
    @IBOutlet weak var btnLike: UIButton!
    @IBOutlet weak var imageSelect: UIImageView!
    @IBOutlet weak var viewInCell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
