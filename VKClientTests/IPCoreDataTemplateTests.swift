//
//  IPCoreDataTemplateTests.swift
//  VKClientTests
//
//  Created by Tester on 7/3/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import XCTest
@testable import VKClient
import MagicalRecord

class IPCoreDataTemplateTests: XCTestCase {
    
    private let initializer = IPCoreDataInitializer.shared
    
    override func setUp() {
        super.setUp()
        MagicalRecord.cleanUp()
        initializer.setupCoreData()
    }
    
    override func tearDown() {
        super.tearDown()
    }
}
