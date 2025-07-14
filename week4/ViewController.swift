//
//  ViewController.swift
//  week4
//
//  Created by HDI on 7/11/25.
//

import UIKit
import Toast

class ViewController: UIViewController {
    
    @IBOutlet var txtfield: UITextField!
    @IBOutlet var resultLabel: UILabel!
    var numbers : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.numberOfLines = 0
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        view.makeToast("토스트 오픈소스 확인",duration: 2,position: .center)
    }
    @IBAction func gameStart(_ sender: UIButton) {
        let gaming = txtfield.text ?? ""
           if let gameNumber = Int(gaming) {
               resultLabel.text = ""
               for i in 1...gameNumber {
                   let count = String(i).filter { $0 == "3" || $0 == "6" || $0 == "9" }.count
                   if count > 0 {
                       resultLabel.text! += "짝!,"
                   } else {
                       resultLabel.text! += "\(i),"
                   }
               }
           }
    }
}
