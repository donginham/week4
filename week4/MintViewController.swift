//
//  MintViewController.swift
//  week4
//
//  Created by HDI on 7/15/25.
//

import UIKit

class MintViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func closeButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        //push의 짝궁은 팝
    }

}
