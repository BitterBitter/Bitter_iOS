//
//  MoreInformationSignUpViewController.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import UIKit

final class MoreInformationSignUpViewController: baseVC {
    
    // MARK: - Properties
    
    @IBOutlet weak var nameTextField: TextFieldWithPadding!
    @IBOutlet weak var ageTextField: TextFieldWithPadding!
    @IBOutlet weak var genderTextField: TextFieldWithPadding!
    @IBOutlet weak var heightTextField: TextFieldWithPadding!
    @IBOutlet weak var weightTextField: TextFieldWithPadding!
    var username: String?
    var password: String?
    
    
    
    // MARK: - Method
    @IBAction func tapBackButton(_ sender: UIButton) {
      self.navigationController?.popViewController(animated: true)
    }
    @IBAction func tapDoneButton(_ sender: UIButton) {
        
        let name = nameTextField.text!
        let age = ageTextField.text!
        let gender = genderTextField.text!
        let height = heightTextField.text!
        let weight = weightTextField.text!
        
        let memberDbManager = MemberDbManager() 
        memberDbManager.addMemberInfo(username: username!, password: password!, name: name, age: age, gender: gender, height: height, weight: weight)
        
        morSignupNetworking()
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "signin") as? SignInViewController
        self.navigationController?.pushViewController(vc ?? SignInViewController(), animated: true)
    }
    
    
}
