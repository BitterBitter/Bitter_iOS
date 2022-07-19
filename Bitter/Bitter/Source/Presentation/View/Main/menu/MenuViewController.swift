//
//  MenuViewController.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import UIKit

final class MenuViewController: baseVC {
    
    let memberDbManager = MemberDbManager()
    var member: Member = Member()
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        member = memberDbManager.selectMemberInfo(username: Constants.USER_NAME)
        
        nameLabel.text = member.name
        infoLabel.text = "성별 : \(member.gender!)  나이 : \(member.age!)  키 : \(member.height!)  몸무게 : \(member.weight!)"
        
    }
    
}
