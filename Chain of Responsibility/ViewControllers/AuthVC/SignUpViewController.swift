//
//  SignUpViewController.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

class SignUpViewController: BaseAuthViewController {

    func signUpButtonSelected() {
        print("SignUp View Controller: User selected SignUp button")

        let request = SignUpRequest(firstName: "Vasya",
                                    lastName: "Pupkin",
                                    email: "vasya.pupkin@gmail.com",
                                    password: "123HardPass",
                                    repeatedPassword: "123HardPass")

        if let error = handler?.handle(request) {
            print("SignUp View Controller: something went wrong")
            print("SignUp View Controller: Error -> " + (error.errorDescription ?? ""))
        } else {
            print("SignUp View Controller: Preconditions are successfully validated")
        }
    }
}
