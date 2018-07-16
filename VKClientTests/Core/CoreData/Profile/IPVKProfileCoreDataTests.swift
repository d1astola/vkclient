//
//  IPVKProfileCoreDataTests.swift
//  VKClientTests
//
//  Created by Tester on 7/4/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import XCTest
@testable import VKClient

class IPVKProfileCoreDataTests: IPCoreDataTemplateTests {
    
    let exampleProfile: Dictionary<String, Any> = ["photo_100" : "example_link",
                                                   "first_name" : "example_first_name",
                                                   "last_name" : "example_last_name",
                                                   "id" : NSNumber(value: 100),
                                                   "status" : "example_status"]
    let coreData = IPVKProfileCoreData()
    let cleaner = IPCoreDataCleaner()
    
    override func setUp() {
        super.setUp()
        coreData.addProfileInfo(dictionary: exampleProfile)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
//    func testData() {
//        let profile = coreData.getProfileInfo()
//        XCTAssert(profile.avatarURL == exampleProfile["photo_100"] as? String)
//        XCTAssert(profile.firstName == exampleProfile["first_name"] as? String)
//        XCTAssert(profile.secondName == exampleProfile["last_name"] as? String)
//        XCTAssert(profile.id == exampleProfile["id"] as! Int64)
//        XCTAssert(profile.status == exampleProfile["status"] as? String)
//    }
    
    func testCleaner() {
        cleaner.cleanIPVKProfile()
        let profile = coreData.getProfileInfo()
        XCTAssert(profile.avatarURL == "")
        XCTAssert(profile.firstName == "")
        XCTAssert(profile.secondName == "")
        XCTAssert(profile.id == 0)
        XCTAssert(profile.status == "")
    }
}
