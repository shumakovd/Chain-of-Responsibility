//
//  SquirrelHandler.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

class SquirrelHandler: Handler {

    var nextHandler: Handler?

    func handle(request: String) -> String? {

        if (request == "Nut") {
            return "Squirrel: I'll eat the " + request + ".\n"
        } else {
            return nextHandler?.handle(request: request)
        }
    }
}
