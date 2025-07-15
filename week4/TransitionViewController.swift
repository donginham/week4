//
//  TransitionViewController.swift
//  week4
//
//  Created by HDI on 7/15/25.
//

import UIKit

class TransitionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func pushButton(_ sender: UIButton) {
        let mint = "MintViewController"
        //1. 어떤 스토리보드에
        let myStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //2. 어떤 뷰컨을
        // let M = MIntViewController() 얘와 동일
        let vc = myStoryboard.instantiateViewController(withIdentifier: mint) as! MintViewController
        
        //3. 전환할 지를
        navigationController?.pushViewController(vc, animated: true)
        //push는 네비게이션을 통해 접근,네비게이션 컨트롤러가 있는지 확인을 위해 체이닝
        // ! 엔트리포인트는 네비게이션 컨트롤러에 있어야함 ! - 잘못된 곳에 설정되었을 시 작동안됨
        
    }
    @IBAction func presentButton(_ sender: UIButton) {
        let green = "GreenViewController"
        //1. 어떤 스토리보드에
        let myStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //2. 어떤 뷰컨을
        // let G = GreenViewController() 얘와 동일
        let vc = myStoryboard.instantiateViewController(withIdentifier: green) as! GreenViewController
        //값 전달
        vc.testLabel.text = "Greeeen"
        vc.testLabel.textColor = .green
        //원-래는 레이블과 같은 아웃렛 설정을 여기서 하면 에러나옴
        //이거 실행될 때보다 늦게 아웃렛이 만들어지기 때문에 에러나오는데 왜 되지???
        //암튼 됨
        //2_1 화면전환의 효과 설정
        vc.modalPresentationStyle = .fullScreen // 꽉찬화면! 크다.
        vc.modalTransitionStyle  = .flipHorizontal // 화면이 빙빙돌아가면서 바뀜
        //3. 전환할 지를
        present(vc,animated: true)
    }
    

}
