//
//  MainViewController.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import UIKit

final class MainViewController: baseVC {
    
    let memberDbManager = MemberDbManager()
    var member: Member = Member()
    
    static var myPill: [MyPill] = []
    
    @IBOutlet weak var mainTableView: UITableView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    var username: String?
    
    
    @IBAction func onClickOffbaseCard(_ sender: UIButton) {
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mainTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainTableView.dataSource = self
        self.mainTableView.delegate = self
        self.mainTableView.isEditing = true
        
        
        member = memberDbManager.selectMemberInfo(username: username ?? Constants.USER_NAME)
        print(member)
        
        nameLabel.text = member.name
        genderLabel.text = member.gender
        print("\(member.name)  \(member.gender) 😀😀😀")
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MainViewController.myPill.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MainTableViewCell?     = self.mainTableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as? MainTableViewCell
        guard let cell = cell else { return UITableViewCell() }
        cell.titleLabel.text = MainViewController.myPill[indexPath.row].pillName
        cell.subtitleLabel.text = MainViewController.myPill[indexPath.row].pillInfo
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            print("delete")
            MainViewController.myPill.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
}
