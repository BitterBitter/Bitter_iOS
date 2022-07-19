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
        let storyboard = UIStoryboard(name: "main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "tab") as? MainTabBarVC else { return }
        UIApplication.shared.keyWindow?.replaceRootViewController(vc, animated: true, completion: nil)
    }
    
}
