//
//  IPVKFriendsCoreDataTests.swift
//  VKClientTests
//
//  Created by Tester on 7/3/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import XCTest
@testable import VKClient

class IPVKFriendsCoreDataTests: IPCoreDataTemplateTests {
    
    private var friendsArray: Array<Dictionary<String, Any>> = Array()
    private let coreData = IPVKFriendsCoreData()
    private let cleaner = IPCoreDataCleaner.shared
    
    override func setUp() {
        super.setUp()
        friendsArray.append(["photo_100" : "sample_link_1",
                             "first_name" : "first_sample_name_1",
                             "last_name" : "second_sample_name_1",
                             "online" : false,
                             "id" : NSNumber(value: 100)])
        friendsArray.append(["photo_100" : "sample_link_2",
                             "first_name" : "first_sample_name_2",
                             "last_name" : "second_sample_name_2",
                             "online" : true,
                             "id" : NSNumber(value: 101)])
        friendsArray.append(["photo_100" : "sample_link_3",
                             "first_name" : "first_sample_name_3",
                             "last_name" : "second_sample_name_3",
                             "online" : false,
                             "id" : NSNumber(value: 102)])
        coreData.addFriends(friendsArray)
        coreData.updateFriends()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCount() {
        XCTAssert(coreData.countOfFriends() == friendsArray.count)
    }
    
    func testData() {
        for index in 0..<coreData.countOfFriends() {
            let friend = coreData.friend(at: index)
            let srcFriend = friendsArray[index]
            XCTAssert(friend.avatarURL == (srcFriend["photo_100"] as? String))
            XCTAssert(friend.firstName == (srcFriend["first_name"] as? String))
            XCTAssert(friend.secondName == (srcFriend["last_name"] as? String))
            XCTAssert(friend.online == (srcFriend["online"] as! Bool))
            XCTAssert(friend.id == (srcFriend["id"] as! Int64))
        }
    }
    
    func testCleaner() {
        XCTAssert(coreData.countOfFriends() == friendsArray.count)
        cleaner.cleanIPVKFriends()
        XCTAssert(coreData.countOfFriends() == 0)
    }
}
