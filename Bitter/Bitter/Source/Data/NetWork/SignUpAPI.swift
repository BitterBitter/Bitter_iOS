//
//  SignUpAPI.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import UIKit
import Alamofire
import KeychainAccess

extension MoreInformationSignUpViewController {
    func signupNetworking() {
        let completion: ((SignUp?) -> Void) = { data in
            guard let status = data?.status else { return }
            if status == 200 {
                let storyboard = UIStoryboard(name: "signup", bundle: nil)
                guard let vc = storyboard.instantiateViewController(withIdentifier: "signup") as? MainViewController else { return }
//                UIApplication.shared.keyWindow?.replaceRootViewController(vc, animated: true, completion: nil)
            }
        }
    }
}
