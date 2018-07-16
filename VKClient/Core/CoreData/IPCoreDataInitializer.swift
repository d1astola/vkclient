//
//  IPCoreDataInitializer.swift
//  VKClient
//
//  Created by Игорь Пак on 30/05/2018.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import MagicalRecord

class IPCoreDataInitializer: NSObject {
    
    static let shared = IPCoreDataInitializer()
    
    public func setupCoreData() {
        MagicalRecord.setupCoreDataStack(withStoreNamed: "IPVKProfile")
        MagicalRecord.setupCoreDataStack(withStoreNamed: "IPVKFriends")
    }
}
