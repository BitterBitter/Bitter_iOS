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
        NotificationCenter.default.addObserver(self, selector: #selector(sendData), name: Notification.Name(rawValue: "SendData"), object: nil)
    }
    
    @objc func sendData(_ notification : Notification) {
        let msg = notification.object as? String
        print("message : \(idTextField.text!)")
        
    }
    
    @IBAction func tapLoginButton(_ sender: UIButton) {
//        NotificationCenter.default.addObserver(self, selector: #selector(sendData), name: Notification.Name(rawValue: "SendData"), object: nil)
        let username: String = idTextField.text!
        
        //        loginNetWorking()
        
//        sendUsername(username: username)
        
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                guard let vc1 = storyboard.instantiateViewController(withIdentifier: "tab") as? MainTabBarVC else { return }
                UIApplication.shared.keyWindow?.replaceRootViewController(vc1, animated: true, completion: nil)
    }
    
//    func sendUsername(username: String) {
//        let main = MainViewController(username: username)
//        guard let vc = storyboard?.instantiateViewController(withIdentifier: "tab") as? MainTabBarVC else { return }
//        UIApplication.shared.keyWindow?.replaceRootViewController(vc, animated: true, completion: nil)
//    }
    
    func sendDataa() {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "main") as? MainViewController else { return }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension SignInViewController: SendDataDelegate {
    func recieveData(response: String) {
        print("response : \(response)")
    }
}
