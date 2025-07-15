//
//  IntroViewController.swift
//  week4
//
//  Created by HDI on 7/15/25.
//

import UIKit

class IntroViewController: UIViewController {
    
    @IBOutlet var introImage: UIImageView!
    @IBOutlet var introTitle: UILabel!
    @IBOutlet var introSubtitle: UILabel!
    @IBOutlet var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func backButtonClicked(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
