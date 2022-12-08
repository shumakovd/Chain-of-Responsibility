//
//  SignUpHandler.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

class SignUpHandler: BaseHandler {

    private struct Limit {
        static let passwordLength = 8
    }

    override func handle(_ request: Request) -> LocalizedError? {

        guard request.email?.contains("@") == true else {
            return AuthError.invalidEmail
        }

        guard (request.password?.count ?? 0) >= Limit.passwordLength else {
            return AuthError.invalidPassword
        }

        guard request.password == request.repeatedPassword else {
            return AuthError.differentPasswords
        }

        return next?.handle(request)
    }
}
