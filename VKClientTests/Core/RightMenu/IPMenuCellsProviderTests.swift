//
//  IPMenuCellsProviderTests.swift
//  VKClientTests
//
//  Created by Tester on 7/3/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import XCTest
@testable import VKClient

class IPMenuCellsProviderTests: XCTestCase {
    
    let provider = IPMenuCellsProvider.shared
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testLocalizedText() {
        for index in 0..<provider.countOfCellsInMenu() {
            let key = provider.key(index)
            XCTAssert(provider.localizedString(index) == NSLocalizedString(key, tableName: "IPMenuCells", bundle: Bundle.main, value: "", comment: ""))
        }
    }
}
