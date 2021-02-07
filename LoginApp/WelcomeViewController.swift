//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Marius Malyshev on 03.02.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var welcomeMessageLabel: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    // MARK: - Public Properties
    var username: String!
    
    // MARK: - Private properties
    
    // MARK: -  Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = "Welcome " + username + "!"
        logOutButton.layer.cornerRadius = 5
    }
}
