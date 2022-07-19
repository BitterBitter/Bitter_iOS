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
    
    // MARK: - Method
    @IBAction func tapBackButton(_ sender: UIButton) {
      self.navigationController?.popViewController(animated: true)
    }
    @IBAction func tapDoneButton(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    
}
