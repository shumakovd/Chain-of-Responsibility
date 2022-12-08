//
//  LoginRequest.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

struct LoginRequest: Request {

    var email: String?
    var password: String?
}
