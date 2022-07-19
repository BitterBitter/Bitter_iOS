//
//  MemberModel.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/20.
//

import Foundation
import RealmSwift

class Member: Object {
    @objc dynamic var username: String?
    @objc dynamic var password: String?
    @objc dynamic var name: String?
    @objc dynamic var age: String?
    @objc dynamic var gender: String?
    @objc dynamic var height: String?
    @objc dynamic var weight: String?
    required override init() {}
}
