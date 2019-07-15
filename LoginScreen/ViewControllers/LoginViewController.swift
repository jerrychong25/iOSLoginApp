//
//  LoginViewController.swift
//  LoginScreen
//
//  Created by Florian Marcu on 1/15/17.
//  Copyright © 2017 iOS App Templates. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!

    @IBAction func didTapLoginButton(_ sender: LoginButton) {
        // Regular login attempt. Add the code to handle the login by email and password.
        guard let email = usernameTextField.text, let pass = passwordTextField.text else {
            // It should never get here
            return
        }
        didLogin(method: "email and password", info: "\nEmail: \(email) \n Password: \(pass)")
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }

    private func didLogin(method: String, info: String) {
////        let message = "Successfully logged in with \(method). \n" + info
//        let message = info
//        let alert = UIAlertController(title: "Success", message: message, preferredStyle: UIAlertController.Style.alert)
//        alert.addAction(UIAlertAction(title: "Done", style: UIAlertAction.Style.default, handler: nil))
//        self.present(alert, animated: true, completion: nil)
        
//        let webView = WebViewController(nibName: "WebViewController", bundle: nil)
//        self.navigationController?.pushViewController(webView, animated: true)

        // Test Working 1
//        let storyBoard : UIStoryboard = UIStoryboard(name: "LoginScreen", bundle: nil)
//        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "webView") as! WebViewController
//        self.present(nextViewController, animated:true, completion:nil)
        
        // Test Working 2
//        let webVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "webView") as! WebViewController
////        self.navigationController?.pushViewController(vc!, animated: true)
//        self.present(webVC, animated: true)
        
        // Test 3
        performSegue(withIdentifier: "webView", sender: self)
    }
}
