//
//  IPVKDownloadManager.swift
//  VKClient
//
//  Created by Tester on 7/13/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import VK_ios_sdk
import SVProgressHUD

protocol IPVKDownloadManagerDelegate: NSObjectProtocol {
    func downloadedSuccessful()
}

class IPVKDownloadManager: NSObject {
    
    public var delegate: IPVKDownloadManagerDelegate?
    
    private let downloadQueue = IPDownloadQueueManager()
    private let profileCoreData = IPVKProfileCoreData()
    private let friendsCoreData = IPVKFriendsCoreData()
    
    public func downloadAll() {
        SVProgressHUD.show(withStatus: NSLocalizedString("mainLoadingLabel", tableName: "IPMain", bundle: Bundle.main, value: "", comment: ""))
        downloadQueue.clear()
        downloadQueue.push {
            self.updateInformationAboutMe()
        }
        downloadQueue.push {
            self.updateInformationAboutMyFriends()
        }
        self.runNextOperation()
    }

    @objc public func updateInformationAboutMe() {
        let request = VKApi.users().get(["fields" : "photo_100, status"])
        request?.execute(resultBlock: { (response) in
            let array = response?.json as! Array<Dictionary<String, Any>>
            self.profileCoreData.addProfileInfo(dictionary: array[0])
            self.runNextOperation()
        }, errorBlock: nil)
    }
    
    @objc public func updateInformationAboutMyFriends() {
        let request = VKApi.friends().get(["fields" : "photo_100, online"])
        request?.execute(resultBlock: { (response) in
            let dict = response?.json as! Dictionary<String, Any>
            let friendsArray = dict["items"] as! Array<Dictionary<String, Any>>
            self.friendsCoreData.addFriends(friendsArray)
            self.runNextOperation()
        }, errorBlock: { (error) in
            
        })
    }
    
    // MARK: - Private
    
    private func runNextOperation() {
        if !downloadQueue.queueIsEmpty() {
            downloadQueue.pull()()
        } else {
            SVProgressHUD.dismiss()
            delegate?.downloadedSuccessful()
        }
    }
    
}

class IPDownloadQueueManager: NSObject {
    
    private var queue: Array<() -> Void> = Array()
    
    public func pull() -> () -> Void {
        let closure = queue.popLast()!
        return closure
    }
    
    public func push(_ closure: @escaping () -> Void) {
        queue.append(closure)
    }
    
    public func clear() {
        queue = Array()
    }
    
    public func queueIsEmpty() -> Bool {
        return queue.isEmpty
    }
    
}
