//
//  SignUpModel.swift
//  Bitter
//
//  Created by 김상금 on 2022/07/19.
//

import Foundation
import HandyJSON

class SignUp: HandyJSON {
    var status: Int?
    var error: String?
    var message: String?
    required init() {}
}
