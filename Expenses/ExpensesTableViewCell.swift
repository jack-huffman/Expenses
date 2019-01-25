//
//  ExpensesTableViewCell.swift
//  Expenses
//
//  Created by Jack Huffman on 1/25/19.
//  Copyright © 2019 Jack Huffman. All rights reserved.
//

import UIKit

class ExpensesTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
