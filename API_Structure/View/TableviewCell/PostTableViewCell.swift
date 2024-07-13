//
//  PostTableViewCell.swift
//  API_Structure
//
//  Created by Jay Khodiyar on 12/07/24.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblBody: UILabel!
    
    static let nibName = "PostTableViewCell"
    
    static let nib = UINib(nibName: "PostTableViewCell", bundle: nil)
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
