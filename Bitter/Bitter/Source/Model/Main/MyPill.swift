//
//  MyPill.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import Foundation
import RealmSwift

class MyPill: Object {
    @objc dynamic var pillName: String?
    @objc dynamic var pillInfo: String?
    @objc dynamic var pillTime: Date?
    required override init() {}
    
    var dateFormatter: DateFormatter = {
        let dataFormatter = DateFormatter()
        dataFormatter.dateFormat = "YYYY.MM.dd HH:mm"
        
        return dataFormatter
    }()
    
    dateFormatter.string(from: pillTime)
}
