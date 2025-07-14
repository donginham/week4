//
//  TravelingTableViewCell.swift
//  week4
//
//  Created by HDI on 7/14/25.
//

import UIKit

class TravelingTableViewCell: UITableViewCell {

    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var TravelingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        TravelingLabel.textColor = .black
        TravelingLabel.backgroundColor = .yellow
    }

    
    
}
