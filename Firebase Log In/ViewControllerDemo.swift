//
//  ViewControllerDemo.swift
//  Decision Science
//
//  Created by Steven Lu on 7/19/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class ViewControllerDemo: UIViewController {
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()

    }
    

    
    func setUpElements() {
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleFilledButton(logInButton)
    }
}
