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
       
        TravelingLabel.numberOfLines = 0
        dateLabel.backgroundColor = .clear
        TravelingLabel.numberOfLines = 0
        TravelingLabel.backgroundColor = .clear
        TravelingLabel.textColor = .black
        TravelingLabel.backgroundColor = .yellow
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        //초기화 되는 건 사용자 입장에서 자유도가 없음.
        
    }
    
    // 100% 모든 셀에 대해서 대응
    func configureTravelLabel(row: Travel) {
        TravelingLabel.text = row.overview
        TravelingLabel.text = row.name
        if row.like == true {
            backgroundColor = .yellow
        } else {
            backgroundColor = .lightGray
        }
    }

    
    
}
