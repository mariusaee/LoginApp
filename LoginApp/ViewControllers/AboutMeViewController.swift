//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Marius Malyshev on 07.02.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    var user: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "\(user.username)"
    }
}
