//
//  MoreInfoAPI.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import UIKit
import Alamofire
import KeychainAccess

extension MoreInformationSignUpViewController {
    func morSignupNetworking() {
        print("😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆😆")
        print("\(Constants.SERVER_IP)auth/signup/more")
        
        let param = ["username": username!, "password": password!, "name": nameTextField.text!, "age": Int(ageTextField.text!)!, "gender":genderTextField.text!, "helm":heightTextField.text!,"Weight":weightTextField.text!] as [String : Any]
        print(param)
        
        let completion: ((SignUp?) -> Void) = { data in
            guard let status = data?.status else { return }
            
            print(data?.status)
        }
        APImanager.doRequest("http://172.16.1.40:8080/auth/signup", method: .post, parameters: param, completion: completion)
    }
}
