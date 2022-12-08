//
//  LoginViewController.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

class LoginViewController: BaseAuthViewController {

    func loginButtonSelected() {
        print("Login View Controller: User selected Login button")

        let request = LoginRequest(email: "smth@gmail.com", password: "123HardPass")

        if let error = handler?.handle(request) {
            print("Login View Controller: something went wrong")
            print("Login View Controller: Error -> " + (error.errorDescription ?? ""))
        } else {
            print("Login View Controller: Preconditions are successfully validated")
        }
    }
}
