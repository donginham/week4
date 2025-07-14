//
//  TravelTableViewCell.swift
//  week4
//
//  Created by HDI on 7/11/25.
//

import UIKit
import Kingfisher



class TravelTableViewCell: UITableViewCell {

    @IBOutlet var travelImage: UIImageView!
    @IBOutlet var travelTitleLabel: UILabel!
    @IBOutlet var travelIntoduce: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        travelTitleLabel.font = .systemFont(ofSize: 20,weight: .bold)
        travelTitleLabel.numberOfLines = 0
        
        travelIntoduce.font = .systemFont(ofSize: 15)
        travelIntoduce.textColor = .lightGray
        
        dateLabel.textColor = .lightGray
        dateLabel.font = .systemFont(ofSize: 12)
        dateLabel.textAlignment = .right
        
        travelImage.layer.cornerRadius = 10
        travelImage.backgroundColor = .clear
        travelImage.contentMode = .scaleAspectFill
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
