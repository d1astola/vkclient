//
//  IPRightMenuVC.swift
//  VKClient
//
//  Created by Tester on 6/26/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import MMDrawerController

class IPRightMenuVC: MMDrawerController, IPMenuDelegate {
    

    private var centerStoryboard: UIStoryboard = UIStoryboard(name: "Profile", bundle: Bundle.main)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let center = centerStoryboard.instantiateInitialViewController()
        let left = IPMenuVC()
        left.loadView()
        left.configure()
        left.delegate = self
        
        self.centerViewController = center
        self.leftDrawerViewController = left
        self.openDrawerGestureModeMask = MMOpenDrawerGestureMode(rawValue: MMOpenDrawerGestureMode.panningCenterView.rawValue | MMOpenDrawerGestureMode.panningNavigationBar.rawValue)
        self.closeDrawerGestureModeMask = MMCloseDrawerGestureMode(rawValue: MMCloseDrawerGestureMode.panningCenterView.rawValue | MMCloseDrawerGestureMode.panningNavigationBar.rawValue | MMCloseDrawerGestureMode.tapCenterView.rawValue | MMCloseDrawerGestureMode.tapNavigationBar.rawValue)
        self.showsShadow = true
        self.centerHiddenInteractionMode = .none
        self.shouldStretchDrawer = false
    }

    func changeCenter(_ storyboard: UIStoryboard) {
        self.centerStoryboard = storyboard
        self.centerViewController = centerStoryboard.instantiateInitialViewController()
        self.toggle(.left, animated: true, completion: nil)
    }
}
