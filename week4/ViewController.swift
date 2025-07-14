//
//  ViewController.swift
//  week4
//
//  Created by HDI on 7/11/25.
//

import UIKit
import Toast

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(0)
        print(1)
        print(2)
        print(3)
        print(4)
        print(5)
        print(6)
        
        //commit 확인용
        //빌드가 잘 될 때 commit하기
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        view.makeToast("토스트 오픈소스 확인",duration: 2,position: .center)
    }
}

