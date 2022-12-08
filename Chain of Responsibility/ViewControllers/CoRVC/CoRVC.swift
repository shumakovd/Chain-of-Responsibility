//
//  CoRVC.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import UIKit

class CoRVC: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testChainOfResponsibilityConcept()
        testChainOfResponsibilityFromExample()
    }
    
    
    // MARK: - Methods
    
    func testChainOfResponsibilityConcept() {
        
        /// The other part of the client code constructs the actual chain.
        
        let monkey = MonkeyHandler()
        let squirrel = SquirrelHandler()
        let dog = DogHandler()
        monkey.setNext(handler: squirrel).setNext(handler: dog)
        
        /// The client should be able to send a request to any handler, not just
        /// the first one in the chain.
        
        print("Chain: Monkey > Squirrel > Dog\n\n")
        Client.someClientCode(handler: monkey)
        print()
        print("Subchain: Squirrel > Dog\n\n")
        Client.someClientCode(handler: squirrel)
    }
    
    func testChainOfResponsibilityFromExample() {
        
        print("Client: Let's test Login flow!")
        
        let loginHandler = LoginHandler(with: LocationHandler())
        let loginController = LoginViewController(handler: loginHandler)
        
        loginController.loginButtonSelected()
        
        print("\nClient: Let's test SignUp flow!")
        
        let signUpHandler = SignUpHandler(with: LocationHandler(with: NotificationHandler()))
        let signUpController = SignUpViewController(handler: signUpHandler)
        
        signUpController.signUpButtonSelected()
    }
}
