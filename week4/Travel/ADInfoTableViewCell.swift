//
//  ADInfoTableViewCell.swift
//  week4
//
//  Created by HDI on 7/15/25.
//

import UIKit

class ADInfoTableViewCell: UITableViewCell {
    
    @IBOutlet var ADButton: UIButton!
    @IBOutlet var colorView: UIView!
    @IBOutlet var adTitleLabel: UILabel!
    let colors: [UIColor] = [.lightGray,.systemPink,.systemOrange,.systemTeal]
    //셀 뒤에 깔릴 랜덤 색들
    static let ADInfo = "ADInfoTableViewCell"
    func configureAD(myInfo:TravelInfo) {
        ADButton.setTitle("AD", for: .normal)
        ADButton.layer.cornerRadius = 10
        ADButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        ADButton.setTitleColor(.black, for: .normal)
        ADButton.backgroundColor = .white
        ADButton.titleLabel?.numberOfLines = 1
        
        adTitleLabel.text = myInfo.title
        
        colorView.layer.cornerRadius = 10
        adTitleLabel.textAlignment = .center
        adTitleLabel.font = .systemFont(ofSize: 15,weight: .bold)
        adTitleLabel.numberOfLines = 0
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        let randomColor = colors.randomElement()
        colorView.backgroundColor = randomColor
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
