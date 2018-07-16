//
//  IPNavigationBarHelperTests.swift
//  VKClientTests
//
//  Created by Tester on 7/3/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import XCTest
@testable import VKClient
import Cuckoo
import MMDrawerController

class IPNavigationBarHelperTests: XCTestCase {
    
    private let navBarItem = UINavigationItem()
    private let navBar = UINavigationBar()
    private let helper = IPNavigationBarHelper()
    
    override func setUp() {
        super.setUp()
    }
    
    func testNavBarCustomization() {
        helper.applyStyle(navBar)
        XCTAssert(navBar.tintColor == UIColor.white)
        XCTAssert(navBar.barStyle == .black)
        XCTAssert(navBar.barTintColor == UIColor.black)
    }
    
    func testNavBarItem() {
        let drawer = MockIPRightMenuVC()
        XCTAssert(navBarItem.leftBarButtonItem == nil)
        helper.setupHamburgerButton(navBarItem, drawer: drawer)
        XCTAssert(navBarItem.leftBarButtonItem != nil)
        XCTAssert((navBarItem.leftBarButtonItem?.isKind(of: MMDrawerBarButtonItem.self))!)
    }
}
