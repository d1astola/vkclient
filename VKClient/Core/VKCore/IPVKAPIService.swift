//
//  IPVKAPIService.swift
//  VKClient
//
//  Created by Tester on 7/17/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import VK_ios_sdk

class IPVKAPIService: NSObject {
    
    private let profileCoreData = IPVKProfileCoreData()
    private let friendsCoreData = IPVKFriendsCoreData()

    @objc public func updateProfileInfo(_ completeBlock: @escaping () -> Void) {
        let request = VKApi.users().get(["fields" : "photo_100, status"])
        request?.execute(resultBlock: { (response) in
            let array = response?.json as? Array<Dictionary<String, Any>> ?? Array()
            self.profileCoreData.addProfileInfo(dictionary: array[0])
            completeBlock()
        }, errorBlock: nil)
    }
    
    @objc public func updateFriends(_ completeBlock: @escaping () -> Void) {
        let request = VKApi.friends().get(["fields" : "photo_100, online"])
        request?.execute(resultBlock: { (response) in
            let dict = response?.json as? Dictionary<String, Any> ?? Dictionary()
            let friendsArray = dict["items"] as? Array<Dictionary<String, Any>> ?? Array()
            self.friendsCoreData.addFriends(friendsArray)
            completeBlock()
        }, errorBlock: nil)
    }
    
}
