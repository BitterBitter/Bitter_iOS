//
//  RestoreIntoViewController.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/20.
//

import UIKit

final class RestoreIntoViewController: baseVC {
    
    let memberDbManager = MemberDbManager()
    var member: Member = Member()
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        member = memberDbManager.selectMemberInfo(username: Constants.USER_NAME)
        
        nameTextField.text = member.name!
        ageTextField.text = member.age!
        genderTextField.text = member.gender!
        heightTextField.text = member.height!
        weightTextField.text = member.weight!
    }
    
    @IBAction func tapCheckButton(_ sender: UIButton) {
        memberDbManager.updateMemberInfo(username: member.username!, password: member.password!, name: nameTextField.text!, age: ageTextField.text!, gender: genderTextField.text!, height: heightTextField.text!, weight: weightTextField.text!)
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
