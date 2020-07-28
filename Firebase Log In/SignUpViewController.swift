//
//  SignUpViewController.swift
//  Decision Science
//
//  Created by Steven Lu on 7/19/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
        
    }
    
    
    func setUpElements() {
        //Hiding Error Label
        errorLabel.alpha = 0
        //Styling the elements
        Utilities.styleFilledButton(signUpButton)
    }
    //Check the fields and validate that the data is correct. If everything is correct
    //This function returns nil. Otherwise, error message as a string.
    func validateFields() -> String? {
        //Check that all fields are filled in
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all fields."
        }
        //Check if the password is secure
        let cleanedPPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if Utilities.isPasswordValid(cleanedPPassword) == false {
            //Password isn't secure enough
            return "Please make sure your password is at least 8 characters, contains a special character, and a number."
        }
        
        return nil
    }
    
    
    @IBAction func signUpTapped(_ sender: UIButton) {
        //Valid the fields
        let error = validateFields()
        
        if error != nil {
            //There is an error, show error message
            showError(error!)
        } else {
            //Create cleaned verisons of the data
            let firstName = firstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let lastName = lastNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            
            
            
            //Create the Users
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                //Check for errors
                if err != nil {
                    // There was an error
                    self.showError("Error creating user.")
                } else {
                    //User was created successfully, now store first/last name
                    let db = Firestore.firestore()
                    
                    db.collection("Users").addDocument(data: ["firstname":firstName, "lastname":lastName, "uid":result!.user.uid]) { (error) in
                        
                        if error != nil {
                            //show error message
                            self.showError("Error saving user data.")
                        }
                    }
                    // Transition to the home screen
                    self.transitionToHome()
                    
                }
            }
            

            
        }
    }
    
    func showError(_ message:String) {
        errorLabel.text = message
        errorLabel.alpha = 1
    }

    func transitionToHome() {
        
        let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
        
    }
    
}
