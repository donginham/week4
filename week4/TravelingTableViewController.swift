//
//  TravelingTableViewController.swift
//  week4
//
//  Created by HDI on 7/14/25.
//

import UIKit

struct Travel {
    let name: String
    let overview: String
    let date: String
    let like: Bool?
}

class TravelingTableViewController: UITableViewController {
   // autimaticDimension 셀의 높이를 유동적으로 조작해주는 커맨드? self Sizing Cell - expandableCell
    let format = DateFormatter() // 연산 비용,인스턴스 생성 비용이 큼
    let travel = [Travel(name: "서울", overview: "선유도공원", date: "250401",like: false),
                  Travel(name: "대전", overview: "성심당", date: "250401",like: true),
                  Travel(name: "대구", overview: "생선", date: "250401",like: true),
                  Travel(name: "울산", overview: "바위", date: "250401",like: false)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //XIB Cell로 구성하는 순간, 필요한 코드
        let xib = UINib(nibName: TravelingTableViewCell.identifier, bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: TravelingTableViewCell.identifier)
        
       // tableView.rowHeight = UITableView.automaticDimension 전체 테이블 뷰에 설정
        setBackground()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travel.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TravelingTableViewCell.identifier,for: indexPath) as! TravelingTableViewCell
        print(#function)
        
        format.dateFormat = "yy년 MM월 dd일 hh시"
        let value = format.string(from:Date())
        
        let row = travel[indexPath.row]
        
        cell.dateLabel.text = value
        cell.dateLabel.text = "\(value), \(row.overview)"
        cell.configureTravelLabel(row: row)
        
        return cell
        //테이블 뷰에 셀을 등록하는 과정이 필요
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
        return UITableView.automaticDimension
        //글자의 사이즈만큼 자동으로 여백을 조절해줌
        //레이블을 신경 써 주어야함. numberOfLines, 오토레이아웃 등
        //여백 기준으로 되어 있어야 셀이 늘어났을 때 나머지의 영역을 컨텐츠로 설정 할 수 있음
        //인덱스 패스를 통해 유동적으로 할 지 안할 지 선택도 가능, 다양하게 운용
    }
}
