//
//  IPVKFriendsCoreData.swift
//  VKClient
//
//  Created by Игорь Пак on 28/06/2018.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import MagicalRecord

class IPVKFriendsCoreData: NSObject {

    private let coreDataCleaner = IPCoreDataCleaner()
    private var friendsArray: Array<IPVKFriends> = Array()
    
    public func addFriends(_ friendsArray: Array<Dictionary<String, Any>>) {
        coreDataCleaner.cleanIPVKFriends()
        for friend in friendsArray {
            self.addFriend(friend)
        }
    }
    
    private func addFriend(_ friend: Dictionary<String, Any>) {
        MagicalRecord.save({ (context) in
            let frnd = IPVKFriends.mr_createEntity(in: context)
            frnd?.creationDate = Date()
            frnd?.avatarURL = friend["photo_100"] as? String
            frnd?.firstName = friend["first_name"] as? String
            frnd?.secondName = friend["last_name"] as? String
            frnd?.online = friend["online"] as? Bool ?? false
            frnd?.id = friend["id"] as? Int64 ?? 1
        })
    }
    
}
