//
//  IPVKProfileCoreData.swift
//  VKClient
//
//  Created by Игорь Пак on 30/05/2018.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import MagicalRecord

class IPVKProfileCoreData: NSObject {

    private let coreDataCleaner = IPCoreDataCleaner.shared
    
    public func addProfileInfo(dictionary: Dictionary<String, Any>) {
        coreDataCleaner.cleanIPVKProfile()
        MagicalRecord.save({ (context) in
            let profile = IPVKProfile.mr_createEntity(in: context)
            profile?.avatarURL = dictionary["photo_100"] as? String
            profile?.firstName = dictionary["first_name"] as? String
            profile?.secondName = dictionary["last_name"] as? String
            profile?.id = dictionary["id"] as! Int64
            profile?.status = dictionary["status"] as? String
        })
    }
    
    public func getProfileInfo() -> IPVKProfile {
        return IPVKProfile.mr_findFirst() ?? self.createEmptyProfile()
    }
    
    private func createEmptyProfile() -> IPVKProfile {
        let profile = IPVKProfile.mr_createEntity()
        profile?.avatarURL = ""
        profile?.firstName = ""
        profile?.secondName = ""
        profile?.status = ""
        profile?.id = 0
        return profile!
    }
}
