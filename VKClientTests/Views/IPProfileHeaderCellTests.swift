//
//  IPProfileHeaderCellTests.swift
//  VKClientTests
//
//  Created by Tester on 7/4/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import XCTest
@testable import VKClient

class IPProfileHeaderCellTests: XCTestCase {
    
    private let initializer = IPCoreDataInitializer()
    private let coreData = IPVKProfileCoreData()
    
    let exampleProfile: Dictionary<String, Any> = ["photo_100" : "https://vk.com/images/camera_100.png",
                                                   "first_name" : "example_first_name",
                                                   "last_name" : "example_last_name",
                                                   "id" : NSNumber(value: 100),
                                                   "status" : "example_status"]
    
    override func setUp() {
        super.setUp()
        coreData.addProfileInfo(dictionary: exampleProfile)
    }
    
    func testCellWithCorrectProfile() {
        let cell = MockIPProfileHeaderCell()
        cell.configure()
        XCTAssert(cell.nameLabel.text == String(format: "%@ %@", exampleProfile["first_name"] as! String, exampleProfile["last_name"] as! String))
        XCTAssert(cell.statusLabel.text == (exampleProfile["status"] as? String))
    }
}
