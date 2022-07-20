//
//  LoginAPI.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import UIKit
import Alamofire
import KeychainAccess

extension SignInViewController {
    func loginNetWorking() {
        let completion: ((SignIn?) -> Void) = { data in
            
            debugPrint("😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆")
            guard let status = data?.status else { return }
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let vc = storyboard.instantiateViewController(withIdentifier: "tab") as? MainTabBarVC else { return }
            UIApplication.shared.keyWindow?.replaceRootViewController(vc, animated: true, completion: nil)
            
        }
        let parameters = ["username": idTextField.text!, "password": passwordTextField.text!]
        print(parameters)
        print("\(Constants.SERVER_IP)auth/signin")
        APImanager.doRequest("\(Constants.SERVER_IP)auth/signin", method: .post, parameters: parameters, completion: completion)
        
    }
}
