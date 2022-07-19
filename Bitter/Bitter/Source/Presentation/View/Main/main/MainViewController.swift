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
    
    let data = ["1","2"]
    
    @IBOutlet weak var mainTableView: UITableView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    var username: String?
    
    
    @IBAction func onClickOffbaseCard(_ sender: UIButton) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "SendData"), object: "hello green")
        self.navigationController?.popViewController(animated: true)
        
        member = memberDbManager.selectMemberInfo(username: username ?? "asdf")
        print(member)
        
        nameLabel.text = member.name
        genderLabel.text = member.gender
        print("\(member.name)  \(member.gender) 😀😀😀")
        
        self.mainTableView.dataSource = self
        self.mainTableView.delegate = self
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MainTableViewCell?     = self.mainTableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as? MainTableViewCell
        guard let cell = cell else { return UITableViewCell() }
        cell.titleLabel.text = data[indexPath.row]
        return cell
    }
    
}
