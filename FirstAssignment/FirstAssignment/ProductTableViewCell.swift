//
//  ProductTableViewCell.swift
//  FirstAssignment
//
//  Created by Sneha Lohit on 19/03/21.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var Price: UILabel!
    
   
    @IBOutlet weak var BuyButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
