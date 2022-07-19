//
//  SignUpViewController.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import UIKit

final class SignUpViewController: baseVC {
    // MARK: - Properties
    
    @IBOutlet weak var usernameTextField: TextFieldWithPadding!
    @IBOutlet weak var passwordTextField: TextFieldWithPadding!
    var username: String?
    var password: String?
    
    
    // MARK: - Method
    @IBAction func tapBackButton(_ sender: UIButton) {
      self.navigationController?.popViewController(animated: true)
    }
    @IBAction func tapNextButton(_ sender: UIButton) {
        
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "more") as? MoreInformationSignUpViewController else { return }
        
        vc.username = usernameTextField.text!
        vc.password = passwordTextField.text!
        
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
