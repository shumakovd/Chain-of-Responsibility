//
//  LoginHandler.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import UIKit
import Foundation

class LoginHandler: BaseHandler {

    override func handle(_ request: Request) -> LocalizedError? {

        guard request.email?.isEmpty == false else {
            return AuthError.emptyEmail
        }

        guard request.password?.isEmpty == false else {
            return AuthError.emptyPassword
        }

        return next?.handle(request)
    }
}
