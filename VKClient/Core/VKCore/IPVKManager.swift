//
//  IPVKManager.swift
//  VKClient
//
//  Created by Tester on 5/30/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import VK_ios_sdk

class IPVKManager: NSObject {
    
    static let sharedManager = IPVKManager()
    
    private let vkStandaloneApplicationID = "6471842"
    private let vkAuthScope = ["friends", "photos", "audio"]
    private let vkAuthManager = IPVKAuthManager()
    private let vkUIManager = IPVKUIManager()
    private let profileCoreData = IPVKProfileCoreData()
    private let friendsCoreData = IPVKFriendsCoreData()
    private let downloadManager = IPVKDownloadManager()
    
    private var currentInDownloadQueue = 0
    
    override init() {
        super.init()
        VKSdk.initialize(withAppId: self.vkStandaloneApplicationID).register(self.vkAuthManager)
        VKSdk.instance().uiDelegate = vkUIManager
        downloadManager.delegate = self
        vkAuthManager.configure(self)
    }
    
    public func changeCurrentVC(viewController: IPAuthorizationVC) {
        vkUIManager.changeCurrentVC(viewController: viewController)
    }
    
    public func authorize() {
        VKSdk.wakeUpSession(vkAuthScope, complete: { (vkAuthState, vkError) in
            if vkAuthState == VKAuthorizationState.authorized {
                print("IPVKManager: Already authorized")
                self.loadInformation()
            }
            else {
                VKSdk.authorize(self.vkAuthScope)
            }
        })
    }
    
    public func loadInformation() {
        downloadManager.downloadAll()
    }
    
    public func showProfileScreen() {
        vkUIManager.showProfile()
    }
    
}

extension IPVKManager: IPVKDownloadManagerDelegate {
    
    func downloadedSuccessful() {
        self.showProfileScreen()
    }
    
}
