//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Marius Malyshev on 03.02.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}
