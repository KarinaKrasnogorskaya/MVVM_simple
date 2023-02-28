//
//  User.swift
//  MVVM_simple
//
//  Created by Карина on 28.02.2023.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
    User(login: "lexone", password: "12345")
    ]
}
