//
//  IPMenuDataSource.swift
//  VKClient
//
//  Created by Tester on 6/26/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit

class IPMenuDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    private let menuProvider = IPMenuCellsProvider.shared
    public var tableViewAction: (UIStoryboard) -> Void = {_ in }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: IPMenuCell.identifier()) as! IPMenuCell
        cell.configureWith(title: menuProvider.localizedString(indexPath.row), key: menuProvider.key(indexPath.row))
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuProvider.countOfCellsInMenu()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableViewAction(menuProvider.storyboard(indexPath.row))
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
