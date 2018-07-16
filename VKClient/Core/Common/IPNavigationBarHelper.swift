//
//  IPNavigationBarHelper.swift
//  VKClient
//
//  Created by Игорь Пак on 28/06/2018.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit

class IPNavigationBarHelper: NSObject {

    public func applyStyle(_ navBar: UINavigationBar) {
        navBar.tintColor = UIColor.white
        navBar.barStyle = .black
        navBar.barTintColor = UIColor.black
    }
    
    public func setupHamburgerButton(_ navItem: UINavigationItem, drawer: IPRightMenuVC) {
        navItem.setLeftBarButton(drawer.leftButton(), animated: true)
    }
}
