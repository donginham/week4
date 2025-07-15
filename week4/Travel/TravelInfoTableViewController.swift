//
//  TravelInfoTableViewController.swift
//  week4
//
//  Created by HDI on 7/15/25.
//

import UIKit
import Kingfisher

struct TravelInfo {
    var title: String?
    var description: String?
    var travel_image: String?
    var grade: Double?
    var save: Int?
    var like: Bool?
    var ad: Bool?
}
class TravelInfoTableViewController: UITableViewController {
    
    let travel: [TravelInfo] = [
        TravelInfo(title: "하나우마 베이",
                description: "아름다운 자연을 감상할 수 있는 스노쿨링 명소",
                travel_image: "https://images.unsplash.com/photo-1539498508910-091b5e859b1d?q=80&w=3250&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                grade: 4.8,
                save: 6932,
                like: false,
                ad: false),
        TravelInfo(title: "쿠알로아 랜치",
                description: "광활한 대자연에서 즐기는 다양하고 재미있는 액티비티",
                travel_image: "https://images.unsplash.com/photo-1709380733305-e65f500ab1ac?q=80&w=3264&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                grade: 4.9,
                save: 5167,
                like: true,
                ad: false),
        TravelInfo(title: "알라 모아나 센터",
                description: "하와이 최고의 쇼핑 명소",
                travel_image: "https://images.unsplash.com/photo-1600215754990-6e7946d1e37a?q=80&w=2592&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                grade: 3.8,
                save: 8262,
                like: true,
                ad: false),
        TravelInfo(title: "와이키키 비치",
                description: "세계적으로 유명한 하와이 최고의 해변",
                travel_image: "https://images.unsplash.com/photo-1507876466758-bc54f384809c?q=80&w=3309&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                grade: 4.2,
                save: 7892,
                like: true,
                ad: false),
        TravelInfo(title: "하와이 여행을 가고싶다면?\n수업이 있는데 가실 생각은 아니시죠?",
                description: nil,
                travel_image: nil,
                grade: nil,
                save: nil,
                like: nil,
                ad: true),
        TravelInfo(title: "철도 박물관",
                description: "일본 철도의 역사를 둘러볼 수 있는 박물관",
                travel_image: "https://images.unsplash.com/photo-1562326303-31bb8d0f4873?q=80&w=3264&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                grade: 2.8,
                save: 3,
                like: false,
                ad: false),
        TravelInfo(title: "도쿄 디즈니랜드",
                description: "월트 디즈니가 창조한 동화 속 세상",
                travel_image: "https://images.unsplash.com/photo-1545580492-8859ba8323f0?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                grade: 4.7,
                save: 26076,
                like: true,
                ad: false),
        TravelInfo(title: "도쿄 타워",
                description: "아름다운 전망을 즐길 수 있는 도쿄의 상징",
                travel_image: "https://images.unsplash.com/photo-1513407030348-c983a97b98d8?q=80&w=3272&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                grade: 4.1,
                save: 37077,
                like: false,
                ad: false),
        TravelInfo(title: "도쿄 여행 예약은?\nXcode로 직접 예약앱을 만들면 되겠네요!",
                description: nil,
                travel_image: nil,
                grade: nil,
                save: nil,
                like: nil,
                ad: true),
        TravelInfo(title: "동문 재래 시장",
                description: "먹거리와 생활용품을 판매하는, 제주에서 가장 큰 시장",
                travel_image: "https://images.unsplash.com/photo-1501523460185-2aa5d2a0f981?q=80&w=3331&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                grade: 4.0,
                save: 67696,
                like: true,
                ad: false),
        TravelInfo(title: "제주 국제공항",
                description: "면세점이 있어 더욱 사랑받는, 제주 여행의 시작과 끝을 함께하는 공항",
                travel_image: "https://images.unsplash.com/photo-1556388158-158ea5ccacbd?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                grade: 4.8,
                save: 18817,
                like: true,
                ad: false),
        TravelInfo(title: "서귀포 매일 올레 시장",
                description: "다양한 농수산물, 잡화, 먹거리를 판매하는 재래 시장",
                travel_image: "https://images.unsplash.com/photo-1511018761631-2e3eb1e4c972?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                grade: 3.9,
                save: 45399,
                like: false,
                ad: false),
        TravelInfo(title: "성산일출봉",
                description: "유네스코 세계 자연 유산에 등재된, 제주 최고의 일출 명소",
                travel_image: "https://images.unsplash.com/photo-1622209018972-097984086b0b?q=80&w=3279&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                grade: 4.9,
                save: 44507,
                like: true,
                ad: false),
        TravelInfo(title: "제주 비행기 최저가! 예약 문의는 취업부터!",
                description: nil,
                travel_image: nil,
                grade: nil,
                save: nil,
                like: nil,
                ad: true),
        TravelInfo(title: "영등포 캠퍼스",
                description: "Jack님과 함께하는,\n우당탕탕 iOS 개발 성장기!",
                travel_image: "https://images.unsplash.com/photo-1679285516851-4f0cb04a3893?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                grade: 5.0,
                save: 30,
                like: true,
                ad: false),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        let xib = UINib(nibName: TravelInfoTableViewCell.info, bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: TravelInfoTableViewCell.info)
        //일반적인 여행정보들 셀 연결
        let ADXib = UINib(nibName: ADInfoTableViewCell.ADInfo, bundle: nil)
        tableView.register(ADXib, forCellReuseIdentifier: ADInfoTableViewCell.ADInfo)
        //얘는 광고일 때만 나오는거
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        travel.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myInfo = travel[indexPath.row]
        if myInfo.ad == false {
            let cell = tableView.dequeueReusableCell(withIdentifier: TravelInfoTableViewCell.info, for: indexPath) as! TravelInfoTableViewCell
            cell.configureImage(myInfo: myInfo)
            cell.configureInfoLabels(myInfo: myInfo)
            cell.configureLabel(myInfo: myInfo)
            return cell
        } else {
            let ADCell = tableView.dequeueReusableCell(withIdentifier: ADInfoTableViewCell.ADInfo, for: indexPath) as! ADInfoTableViewCell
            ADCell.configureAD(myInfo: myInfo)
            return ADCell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myInfo = travel[indexPath.row]
        if myInfo.ad == false {
            let introView = "IntroViewController"
            let introStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let intro = introStoryboard.instantiateViewController(withIdentifier: introView) as! IntroViewController
            navigationController?.pushViewController(intro, animated: true)
            intro.view.backgroundColor = .white
            //이거 없으면 에러남; 이상한..
            
            intro.backButton.setTitle("다른 관광지도 보러가기", for: .normal)
            intro.backButton.tintColor = .white
            intro.backButton.layer.cornerRadius = 10
            intro.backButton.backgroundColor = .systemTeal
            
            if let clickedImage = myInfo.travel_image {
               intro.introImage.kf.setImage(with: URL(string: clickedImage))
            }
            if let clickedTitle = myInfo.title {
                intro.introTitle.text = clickedTitle
        }
            if let clickedSubtitle = myInfo.description {
                intro.introSubtitle.text = clickedSubtitle
            }
            intro.introTitle.font = .systemFont(ofSize: 30, weight: .bold)
            intro.introSubtitle.font = .systemFont(ofSize: 20, weight: .bold)
            intro.introImage.layer.cornerRadius = 10
        } else {
            let ADView = "ADViewController"
            let ADStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let AD = ADStoryboard.instantiateViewController(withIdentifier: ADView) as! ADViewController
            AD.view.backgroundColor = .white
            AD.ADBackbutton.setImage(UIImage(systemName: "xmark"), for: .normal)
            AD.ADBackbutton.setTitle("", for: .normal)
            AD.ADLabel.font = .systemFont(ofSize: 25, weight: .bold)
            AD.ADLabel.numberOfLines = 0
            AD.ADLabel.textAlignment = .center
            AD.ADLabel.text = myInfo.title
            
            AD.modalPresentationStyle = .fullScreen
            present(AD,animated: true)
        }
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let myInfo = travel[indexPath.row]
        if myInfo.ad == true {
            return 100
        } else {
            return 151
        }
    }
}
