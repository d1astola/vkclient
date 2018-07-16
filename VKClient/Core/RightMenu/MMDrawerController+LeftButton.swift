//
//  MMDrawerController+LeftButton.swift
//  VKClient
//
//  Created by Tester on 6/27/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import MMDrawerController

extension MMDrawerController {
    
    public func leftButton() -> MMDrawerBarButtonItem {
        let button = MMDrawerBarButtonItem(image: UIImage(named: "hamburgerMenu"), style: .plain, target: nil, action: #selector(openLeftSideMenu))
        return button
    }
    
    @objc private func openLeftSideMenu() {
        self.toggle(.left, animated: true, completion: nil)
    }
}
