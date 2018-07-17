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
    private let APIService = IPVKAPIService()
    
    public func downloadAll() {
        SVProgressHUD.show(withStatus: NSLocalizedString("mainLoadingLabel", tableName: "IPMain", bundle: Bundle.main, value: "", comment: ""))
        downloadQueue.clear()
        downloadQueue.push {
            self.APIService.updateProfileInfo({
                self.runNextOperation()
            })
        }
        downloadQueue.push {
            self.APIService.updateFriends({
                self.runNextOperation()
            })
        }
        self.runNextOperation()
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
