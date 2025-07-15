//
//  TravelingTableViewCell.swift
//  week4
//
//  Created by HDI on 7/14/25.
//

import UIKit

class TravelingTableViewCell: UITableViewCell {

    @IBOutlet var dateLabel: UILabel!
    //let dateLabel: UILabel() - 거의 같은코드, 쟤도 인스턴스임
    @IBOutlet var TravelingLabel: UILabel!
    static let identifier = "TravelingTableViewCell"
   // let color = Color()
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        TravelingLabel.numberOfLines = 0
        dateLabel.backgroundColor = Color.jackClear // static으로 선언했기 때문에 따로 인스턴스를 생성하지 않더라도 바로 사용 가능
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
