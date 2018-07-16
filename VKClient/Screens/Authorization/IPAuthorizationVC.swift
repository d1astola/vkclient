//
//  IPAuthorizationVC.swift
//  VKClient
//
//  Created by Tester on 5/30/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import VK_ios_sdk
import ChameleonFramework

class IPAuthorizationVC: UIViewController {

    private let vkManager = IPVKManager.sharedManager
    
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var SigninButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginButton.layer.cornerRadius = 2
        LoginButton.titleLabel?.text = NSLocalizedString("mainLogInButton", tableName: "IPMain", bundle: Bundle.main, value: "", comment: "")
        LoginButton.backgroundColor = UIColor.flatYellowColorDark()
        SigninButton.layer.cornerRadius = 2
        SigninButton.titleLabel?.text = NSLocalizedString("mainSignInButton", tableName: "IPMain", bundle: Bundle.main, value: "", comment: "")
        SigninButton.backgroundColor = UIColor.flatSkyBlue()
        
        vkManager.changeCurrentVC(viewController: self)
    }
    
    // MARK: - Routing
    
    public func showProfileScreen() {
        self.performSegue(withIdentifier: "authorizedSuccessfully", sender: self)
    }
    
    // MARK: - Actions

    @IBAction func loginButtonAction(_ sender: UIButton) {
        self.vkManager.authorize()
    }
    
    @IBAction func signinButtonAction(_ sender: UIButton) {
        
    }
    
}
