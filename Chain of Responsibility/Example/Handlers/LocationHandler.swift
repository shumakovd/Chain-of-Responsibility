//
//  LocationHandler.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

class LocationHandler: BaseHandler {

    override func handle(_ request: Request) -> LocalizedError? {
        guard isLocationEnabled() else {
            return AuthError.locationDisabled
        }
        return next?.handle(request)
    }

    func isLocationEnabled() -> Bool {
        return true /// Calls special method
    }
}
