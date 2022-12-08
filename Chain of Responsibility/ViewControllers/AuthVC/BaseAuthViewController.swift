//
//  BaseAuthViewController.swift
//  Chain of Responsibility
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import UIKit
import Foundation

protocol AuthHandlerSupportable: AnyObject {

    var handler: InterfaceHandler? { get set }
}

class BaseAuthViewController: UIViewController, AuthHandlerSupportable {

    /// Base class or extensions can be used to implement a base behavior
    var handler: InterfaceHandler?

    init(handler: InterfaceHandler) {
        self.handler = handler
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
