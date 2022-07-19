//
//  MemberDbManager.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/20.
//

import Foundation
import RealmSwift

class MemberDbManager: NSObject {
    let realm = try! Realm()
    
    func addMemberInfo(username: String, password: String, name: String, age: String, gender: String, height: String, weight: String) {
        let member = Member()
        member.username = username
        member.password = password
        member.name = name
        member.age = age
        member.gender = gender
        member.height = height
        member.weight = weight
        
        try! realm.write {
            realm.add(member)
        }
    }
    
    func updateMemberInfo(username: String, password: String, name: String, age: String, gender: String, height: String, weight: String) {
        if let member = realm.objects(Member.self).first {
            try! realm.write {
                member.username = username
                member.password = password
                member.name = name
                member.age = age
                member.gender = gender
                member.height = height
                member.weight = weight
            }
        }
    }
    
    func selectMemberInfo(username: String) -> Member{
        let members = realm.objects(Member.self)
            .filter("username = '\(username)'")
        for member in members {
            return member
        }
        return Member()
    }
}
