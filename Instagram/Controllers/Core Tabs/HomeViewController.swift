//
//  ViewController.swift
//  Instagram
//
//  Created by Paras on 19/07/21.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        handleNotAuthenticated()
    }
    
    fileprivate func handleNotAuthenticated()
    {
        // Check whether the authentication is done or not
        if Auth.auth().currentUser == nil
        {
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: true)
        }
    }

}

