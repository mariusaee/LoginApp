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
    private let user = User.gerUserData()
    
    // MARK: - Navigation and Override Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as? UITabBarController
        let viewControllers = tabBarController!.viewControllers!
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            }
            else if let aboutVC = viewController as? AboutMeViewController {
                aboutVC.user = user
            }
        }
        }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IB Actions
    @IBAction func logInPressed() {
        if usernameTextField.text == user.username && passwordTextField.text == user.password {
            return
                performSegue(withIdentifier: "logInSegue" , sender: nil)
        } else {
            showAlert(with: "Failed ☹️", and: "Wrong Username or Password")
            self.passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotUsernamePressed() {
        showAlert(with: "Here is your username: 🙂", and: "\(user.username)")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Here is your password: 🙃", and: "\(user.password)")
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
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

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInPressed()
        }
        return true
    }
}

