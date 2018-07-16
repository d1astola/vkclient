//
//  IPVKAuthManager.swift
//  VKClient
//
//  Created by Tester on 5/30/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import VK_ios_sdk

class IPVKAuthManager: NSObject, VKSdkDelegate {
    
    private var manager: IPVKManager?
    
    public func configure(_ manager: IPVKManager) {
        self.manager = manager
    }
    
    func vkSdkAccessAuthorizationFinished(with result: VKAuthorizationResult!) {
        print("IPVKAuthManager successful: Authorize finished")
        manager?.loadInformation()
    }
    
    func vkSdkUserAuthorizationFailed() {
        print("IPVKAuthManager error: Authorize failed")
    }
}
