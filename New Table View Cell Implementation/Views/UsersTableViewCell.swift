//
//  UsersTableViewCell.swift
//  New Table View Cell Implementation
//
//  Created by Rahul Anantulwar on 10/31/19.
//  Copyright © 2019 Rahul Anantulwar. All rights reserved.
//

import UIKit

class UsersTableViewCell: UITableViewCell {
    
    //static let identifier = "UsersTableViewCell"

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        name.text?.removeAll()
        email.text?.removeAll()
    }
    
    func populateTableView(with user: User) {
        name.text = user.name
        email.text = user.email
    }
    
}
