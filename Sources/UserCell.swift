//
//  UserCell.swift
//  APIManager
//
//  Created by Amey Dalvi on 22/04/24.
//

import UIKit
class UserCell: UITableViewCell {
    @IBOutlet weak var viewUserCard: UIView!
    @IBOutlet weak var lblUserNames: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
}
