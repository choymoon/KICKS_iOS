//
//  RegisterStartViewController.swift
//  INS-UP
//
//  Created by 김성은 on 15/11/2019.
//  Copyright © 2019 Cho. All rights reserved.
//

import UIKit

class RegisterStartViewController: UIViewController {

    @IBOutlet weak var welcomeLable: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    
    @IBOutlet weak var registerButton: UIButton!
    @IBAction func registerButtonClicked(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "RegisterCompanyNameViewController") as? RegisterCompanyNameViewController else { return }
        self.navigationController?.show(vc, sender: nil)
    }
    
    @IBAction func backTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        
        welcomeLable.font = UIFont.MGothic(type: .sb, size: 22)
        welcomeLable.text = "환영합니다!"
        
        subLabel.font = UIFont.MGothic(type: .r, size: 18)
        subLabel.text = """
아직 등록된 기업정보가 없네요.
효과적인 서비스를 위해
정보를 등록하시겠습니까?
"""
        
        registerButton.layer.cornerRadius = 22
        registerButton.titleLabel?.font = UIFont.MGothic(type: .m, size: 14)
    }

}
