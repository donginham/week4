//
//  GreenViewController.swift
//  week4
//
//  Created by HDI on 7/15/25.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func closeButton(_ sender: UIButton) {
        
        dismiss(animated: true)
        //이동하기 전 화면을 기록했기 때문에 코드가 간단함
        //present의 짝궁은 dismiss
    }
    
}
