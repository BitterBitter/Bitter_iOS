//
//  SignUpAPI.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import UIKit
import Alamofire
import KeychainAccess

extension SignUpViewController {
    func signupNetworking() {
        print("😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆")
        print("\(Constants.SERVER_IP)auth/signup")
        
        let param1 = ["username": usernameTextField.text!, "password": passwordTextField.text!]
        print(param1)
        
        let completion: ((SignUp?) -> Void) = { data in
            guard let status = data?.status else { return }
            
            print(data?.status)
        }
        APImanager.doRequest("\(Constants.SERVER_IP)auth/signup", method: .post, parameters: param1, completion: completion)
    }
}
