//
//  AddingPillViewController.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/20.
//

import UIKit

final class AddingPillViewController: baseVC {
    
    let pillDbManager = MyPillDbManager()
    var pill: MyPill = MyPill()
    
    @IBOutlet weak var pillNameTextField: UITextField!
    @IBOutlet weak var pillInfoTextField: UITextField!
    @IBOutlet weak var pillTimeDatePicker: UIDatePicker!
    
    @IBAction func tapAddButton(_ sender: UIButton) {
//        var pillTime1: Date = pillTime.date
        
        pill = pillDbManager.addPillInfo(pillName: pillNameTextField.text!, pillInfo: pillInfoTextField.text!, pillTime: pillTimeDatePicker.date)
        
        MainViewController.myPill.append(pill)
        
        self.navigationController?.popToRootViewController(animated: true)
        
        
    }
    
}
