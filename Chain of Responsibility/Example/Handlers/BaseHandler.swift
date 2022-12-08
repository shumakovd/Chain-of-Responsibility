//
//  BaseHandler.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

class BaseHandler: InterfaceHandler {

    var next: InterfaceHandler?

    init(with handler: InterfaceHandler? = nil) {
        self.next = handler
    }

    func handle(_ request: Request) -> LocalizedError? {
        return next?.handle(request)
    }
}
