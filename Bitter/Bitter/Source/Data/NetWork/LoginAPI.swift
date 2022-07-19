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
    func loginNetWorking() -> Bool {
        let completion: ((SignIn?) -> Void) = { data in
            guard let status = data?.status else { return }
            if status == 200 {
                let storyboard = UIStoryboard(name: "signin", bundle: nil)
                guard let vc = storyboard.instantiateViewController(withIdentifier: "signin") as? MainViewController else { return }
                UIApplication.shared.keyWindow?.replaceRootViewController(vc, animated: true, completion: nil)
            }
        }
        let parameters = ["":""]
        APImanager.doRequest("/auth/login", method: .post, parameters: parameters, completion: completion)
        
    }
}
