//
//  Request.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

protocol Request {

    var firstName: String? { get }
    var lastName: String? { get }

    var email: String? { get }
    var password: String? { get }
    var repeatedPassword: String? { get }
}

extension Request {

    /// Default implementations

    var firstName: String? { return nil }
    var lastName: String? { return nil }

    var email: String? { return nil }
    var password: String? { return nil }
    var repeatedPassword: String? { return nil }
}
