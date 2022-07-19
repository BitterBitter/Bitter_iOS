//
//  SignInModel.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import Foundation
import HandyJSON

class SignIn: HandyJSON {
    var timestamp: Date?
    var status: Int?
    var error: String?
    var message: String?
    var path: String?
    required init() {}
}
