//
//  InterfaceHandler.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

protocol InterfaceHandler {

    var next: InterfaceHandler? { get }

    func handle(_ request: Request) -> LocalizedError?
}
