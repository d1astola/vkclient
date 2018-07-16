//
//  IPCoreDataCleaner.swift
//  VKClient
//
//  Created by Игорь Пак on 30/05/2018.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import MagicalRecord

class IPCoreDataCleaner: NSObject {

    static let shared = IPCoreDataCleaner()
    
    public func cleanIPVKProfile() {
        IPVKProfile.mr_truncateAll()
    }
    
    public func cleanIPVKFriends() {
        IPVKFriends.mr_truncateAll()
    }
}
