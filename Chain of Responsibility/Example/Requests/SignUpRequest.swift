//
//  SignUpRequest.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

struct SignUpRequest: Request {

    var firstName: String?
    var lastName: String?

    var email: String?
    var password: String?
    var repeatedPassword: String?
}
