//
//  MainViewController.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import UIKit

final class MainViewController: baseVC {
    
    @IBOutlet weak var mainTableView: UITableView!
    let data = ["1","2"]
    
    @IBAction func onClickOffbaseCard(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
