//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Marius Malyshev on 03.02.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var passwordTextField: UITextField!
    
    @IBAction func forgotUsernamePressed() {
        showAlert(with: "Here is your username:", and: "Username")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Here is your password:", and: "Password")
    }
    
}

// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
