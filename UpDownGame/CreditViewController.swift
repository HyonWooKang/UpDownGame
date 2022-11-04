//
//  CreditViewController.swift
//  UpDownGame
//
//  Created by EnGiS_Spencer on 2022/11/04.
//

import UIKit

class CreditViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func touchUpDismissButton(_ sender: UIButton) {
        dismiss(animated: true) // present의 반대되는 코드, completion 사용 가능함
    }
    
}
