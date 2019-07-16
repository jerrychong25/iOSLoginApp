//
//  RegisterViewController.swift
//  LoginScreen
//
//  Created by High Sierra on 15/07/2019.
//  Copyright © 2019 iOS App Templates. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet var fullnameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var confirmpasswordTextField: UITextField!
    
    @IBAction func didTapRegisterButton(_ sender: RegisterButton) {
        // Regular login attempt. Add the code to handle the login by email and password.
        guard let full_name = fullnameTextField, let email = emailTextField.text, let password = passwordTextField.text, let confirm_password = confirmpasswordTextField else {
            // It should never get here
            return
        }
        didRegister(info: "\n Full Name: \(full_name) \n Email: \(email) \n Password: \(password) \n Confirm Password: \(confirm_password)")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        fullnameTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        confirmpasswordTextField.resignFirstResponder()
    }
    
    private func didRegister(info: String) {
        let message = info
        let alert = UIAlertController(title: "Success", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
//        performSegue(withIdentifier: "webView", sender: self)
    }
}
