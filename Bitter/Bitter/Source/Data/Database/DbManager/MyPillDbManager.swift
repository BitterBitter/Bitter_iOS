//
//  MyPillDbManager.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/20.
//

import Foundation
import RealmSwift

class MyPillDbManager: NSObject {
    let realm = try! Realm()
    
    func addPillInfo(pillName: String, pillInfo: String, pillTime: Date) -> MyPill {
        let pill = MyPill()
        pill.username = Constants.USER_NAME
        pill.pillName = pillName
        pill.pillInfo = pillInfo
        pill.pillTime = pillTime
        try! realm.write {
            realm.add(pill)
        }
        return pill
    }
}
