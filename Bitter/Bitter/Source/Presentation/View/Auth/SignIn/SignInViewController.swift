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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapLoginButton(_ sender: UIButton) {
        let username: String = idTextField.text!
        
//        loginNetWorking()
        
        Constants.USER_NAME = username
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc1 = storyboard.instantiateViewController(withIdentifier: "tab") as? MainTabBarVC else { return }
        UIApplication.shared.keyWindow?.replaceRootViewController(vc1, animated: true, completion: nil)
    }
    
}
