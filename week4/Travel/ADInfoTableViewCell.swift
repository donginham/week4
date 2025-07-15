//
//  ADInfoTableViewCell.swift
//  week4
//
//  Created by HDI on 7/15/25.
//

import UIKit

class ADInfoTableViewCell: UITableViewCell {
    
    @IBOutlet var colorView: UIView!
    @IBOutlet var adTitleLabel: UILabel!
    let colors: [UIColor] = [.lightGray,.systemPink,.systemOrange,.systemTeal]
    //셀 뒤에 깔릴 랜덤 색들
    static let ADInfo = "ADInfoTableViewCell"
    func configureAD(myInfo:TravelInfo) {
        
        let randomColor = colors.randomElement()
        adTitleLabel.text = myInfo.title
        colorView.backgroundColor = randomColor
        adTitleLabel.textAlignment = .center
        adTitleLabel.font = .systemFont(ofSize: 15,weight: .bold)
        adTitleLabel.numberOfLines = 0
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
