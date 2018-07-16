//
//  IPMenuCellsProvider.swift
//  VKClient
//
//  Created by Tester on 6/26/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit

class IPMenuCellsProvider: NSObject {

    static let shared = IPMenuCellsProvider()
    
    private let menuListArray: Array<String> = ["myProfileMenu", "myFriendsMenu", "mySettings"]
    
    public func countOfCellsInMenu() -> Int {
        return menuListArray.count
    }
    
    public func key(_ numberOfCell: Int) -> String {
        return menuListArray[numberOfCell]
    }
    
    public func localizedString(_ numberOfCell: Int) -> String {
        return NSLocalizedString(menuListArray[numberOfCell], tableName: "IPMenuCells", bundle: Bundle.main, value: "", comment: "")
    }
    
    public func storyboard(_ index: Int) -> UIStoryboard {
        let key = menuListArray[index]
        var storyboard: UIStoryboard = UIStoryboard()
        switch key {
        case menuListArray[0]:
            storyboard = UIStoryboard(name: "Profile", bundle: Bundle.main)
        case menuListArray[1]:
            storyboard = UIStoryboard(name: "Friends", bundle: Bundle.main)
        case menuListArray[2]:
            storyboard = UIStoryboard(name: "Settings", bundle: Bundle.main)
        default:
            storyboard = UIStoryboard(name: "Profile", bundle: Bundle.main)
        }
        return storyboard
    }
}
