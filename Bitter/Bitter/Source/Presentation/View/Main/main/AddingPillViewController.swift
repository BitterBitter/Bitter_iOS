//
//  AddingPillViewController.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/20.
//

import UIKit

final class AddingPillViewController: baseVC {
    
    @IBOutlet weak var pillNameTextField: UITextField!
    @IBOutlet weak var pillDescriptionTextField: UITextField!
    @IBOutlet weak var pillTime: UIDatePicker!
    
    
    @IBAction func tapRegisterButton(_ sender: UIButton) {
        
        
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    
}
