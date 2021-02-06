//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Marius Malyshev on 03.02.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    private var username = "Username"
    private var password = "Password"
    
    // MARK: - Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = usernameTextField.text
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func unwind(segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotUsernamePressed() {
        showAlert(with: "Here is your username:", and: "\(username)")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Here is your password:", and: "\(password)")
    }
    
    @IBAction func logInPressed() {
//        showAlert(with: "Failed", and: "Wrong Username or Password")
//        self.passwordTextField.text = ""
    }
    
}

// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
