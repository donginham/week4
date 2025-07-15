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
    static let identifier = "travelCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureImageView (myText: Magazine) {
        travelImage.layer.cornerRadius = 10
        travelImage.backgroundColor = .clear
        travelImage.contentMode = .scaleAspectFill
        travelImage.kf.setImage(with: URL(string: myText.photo_image)!)
    }
    
    func configureDateLabel (myText: Magazine) {
        dateConverter(date: myText.date,dateText: dateLabel)
        dateLabel.textColor = .lightGray
        dateLabel.font = .systemFont(ofSize: 12)
        dateLabel.textAlignment = .right
    }
    
    func configuretravelLabels (myText:Magazine) {
        travelTitleLabel.text = myText.title
        travelTitleLabel.font = .systemFont(ofSize: 20,weight: .bold)
        travelTitleLabel.numberOfLines = 0
        travelIntoduce.text = myText.subtitle
        travelIntoduce.font = .systemFont(ofSize: 15)
        travelIntoduce.textColor = .lightGray
    }
    
    func dateConverter (date: String,dateText: UILabel) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyMMdd"
        let convertDate = dateFormatter.date(from: date)
        //스트링 값을 뽑아  date 타입으로 변환
        let travelDateForMatter =  DateFormatter()
        travelDateForMatter.dateFormat = "yy년 M월 d일"
        dateText.text = "\(travelDateForMatter.string(from: convertDate!))"
        
    }

}
