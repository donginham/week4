//
//  TravelInfoTableViewCell.swift
//  week4
//
//  Created by HDI on 7/15/25.
//

import UIKit
import Kingfisher
class TravelInfoTableViewCell: UITableViewCell {
    @IBOutlet var titleInfo: UILabel!
    @IBOutlet var gradeInfo: UILabel!
    @IBOutlet var introduceInfo: UILabel!
    @IBOutlet var imageInfo: UIImageView!
    @IBOutlet var starLabel: UILabel!
    
    static let info = "TravelInfoTableViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func configureImage (myInfo:TravelInfo) {
        imageInfo.layer.cornerRadius = 10
        imageInfo.contentMode = .scaleAspectFill
        imageInfo.kf.setImage(with: URL(string: myInfo.travel_image ?? ""))
    }
    
    func configureInfoLabels(myInfo:TravelInfo) {
        titleInfo.text = myInfo.title
titleInfo.font = .systemFont(ofSize: 20,weight: .bold)
        titleInfo.numberOfLines = 0
        introduceInfo.text = myInfo.description
        introduceInfo.textColor = .lightGray
        introduceInfo.font = .systemFont(ofSize: 15)
        introduceInfo.numberOfLines = 0
    }
    func configureLabel(myInfo:TravelInfo) {
        let star = starText(grade: myInfo.grade)
        starLabel.text = "\(star)"
        starLabel.font = .systemFont(ofSize: 14)
        starLabel.textColor = .yellow
        gradeInfo.text = "\(myInfo.grade!),리뷰: \(myInfo.save!)"
        gradeInfo.textColor = .lightGray
        gradeInfo.font = .systemFont(ofSize: 14)
    }
    
    func starText(grade: Double?) -> String {
        var starImoji: String = ""
        if let star = grade {
            
            if star >= 1.0 && star < 2.0 {
                starImoji = "★☆☆☆☆"
            } else if star >= 2.0 && star < 3.0 {
                starImoji = "★★☆☆☆"
            } else if star >= 3.0 && star < 4.0 {
                starImoji = "★★★☆☆"
            } else if star >= 3.0 && star < 4.0 {
                starImoji = "★★★★☆"
            } else {
                starImoji = "★★★★★"
            }
        }
        
        return starImoji
        
    }
}
