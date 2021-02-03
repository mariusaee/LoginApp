//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Marius Malyshev on 03.02.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeMessageLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        welcomeMessageLabel.text = "Welcome " + userName + "!"
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}
