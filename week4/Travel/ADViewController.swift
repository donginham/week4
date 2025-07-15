//
//  ADViewViewController.swift
//  week4
//
//  Created by HDI on 7/15/25.
//

import UIKit

class ADViewController: UIViewController {
    
    @IBOutlet var ADBackbutton: UIButton!
    
    @IBOutlet var ADLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func ADButtonClick(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
