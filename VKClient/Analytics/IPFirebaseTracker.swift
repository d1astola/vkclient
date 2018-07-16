//
//  IPFirebaseTracker.swift
//  VKClient
//
//  Created by Игорь Пак on 06/07/2018.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import Firebase

class IPFirebaseTracker: NSObject {
    
    public static let shared = IPFirebaseTracker()
    
    public func trackClickAuthorizeButton() {
        self.trackEvent(title: "auth_button_clicked", dictionaryInfo:[:])
    }
    
    // MARK: - Private
    
    private func trackEvent(title: String, dictionaryInfo: Dictionary<String, Any>?) {
        Analytics.logEvent(title, parameters: dictionaryInfo)
    }
}
