//
//  baseVC.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import UIKit

class baseVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            self.view.endEditing(true)
    }
    
}
