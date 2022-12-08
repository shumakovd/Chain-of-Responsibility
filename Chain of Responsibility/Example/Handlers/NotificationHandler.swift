//
//  NotificationHandler.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

class NotificationHandler: BaseHandler {

    override func handle(_ request: Request) -> LocalizedError? {
        guard isNotificationsEnabled() else {
            return AuthError.notificationsDisabled
        }
        return next?.handle(request)
    }

    func isNotificationsEnabled() -> Bool {
        return false /// Calls special method
    }
}
