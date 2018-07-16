//
//  IPVKUIManager.swift
//  VKClient
//
//  Created by Tester on 5/30/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import VK_ios_sdk

class IPVKUIManager: NSObject, VKSdkUIDelegate {
    
    private var currentViewController: IPAuthorizationVC?
    
    public func changeCurrentVC(viewController: IPAuthorizationVC) {
        currentViewController = viewController
    }
    
    public func showProfile() {
        currentViewController?.showProfileScreen()
    }
    
    // MARK: - VKSdkUIDelegate
    
    func vkSdkShouldPresent(_ controller: UIViewController!) {
        if (self.currentViewController != nil)
        {
            if (self.currentViewController?.presentedViewController != nil) {
                self.currentViewController?.dismiss(animated: true, completion: {
                    self.currentViewController?.present(controller, animated: true, completion: nil)
                })
            } else {
                self.currentViewController?.present(controller, animated: true, completion: nil)
            }
        }
        else
        {
            print("IPVKUIManager error: currentViewController is nil")
        }
    }
    
    func vkSdkNeedCaptchaEnter(_ captchaError: VKError!) {
        
    }
}
