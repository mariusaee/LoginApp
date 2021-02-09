//
//  Data.swift
//  LoginApp
//
//  Created by Marius Malyshev on 07.02.2021.
//

import Foundation

struct User {
    let username: String
    let password: String
    
    static func gerUserData() -> User {
        User(username: "1", password: "1")
    }
}
