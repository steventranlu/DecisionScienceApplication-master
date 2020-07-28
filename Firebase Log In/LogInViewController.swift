//
//  LogInViewController.swift
//  Decision Science
//
//  Created by Steven Lu on 7/19/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit
import FirebaseAuth


class LogInViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()

    }
    
    func setUpElements() {
        //Hide the error label
        errorLabel.alpha = 0
        Utilities.styleFilledButton(logInButton)
    }
    
    
    @IBAction func logInTapped(_ sender: UIButton) {
        //Validate Text Field
        
        //Create cleaned verisons of the text field
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        
        
        //Signing in the user
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                //Couldn't sign in
                self.errorLabel.text = error!.localizedDescription
                self.errorLabel.alpha = 1
            }
            else {
                let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                self.view.window?.rootViewController = homeViewController
                self.view.window?.makeKeyAndVisible()
            }
        }
        
    }
    

}
