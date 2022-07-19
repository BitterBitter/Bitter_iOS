//
//  SignInViewController.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import UIKit

final class SignInViewController: baseVC {
    // MARK: - Properties
    @IBOutlet weak var idTextField: TextFieldWithPadding!
    @IBOutlet weak var passwordTextField: TextFieldWithPadding!
    
    
    @IBAction func tapLoginButton(_ sender: UIButton) {

        loginNetWorking()
    }
    
}
