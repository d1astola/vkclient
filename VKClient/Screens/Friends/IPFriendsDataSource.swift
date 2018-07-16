//
//  IPFriendsDataSource.swift
//  VKClient
//
//  Created by Игорь Пак on 28/06/2018.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit

class IPFriendsDataSource: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    
    private let friendsCoreData = IPVKFriendsCoreData()
    
    public func updateFriends() {
        friendsCoreData.updateFriends()
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: IPFriendCell.identifier()) as! IPFriendCell
        cell.configure(friendsCoreData.friend(at: indexPath.row))
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsCoreData.countOfFriends()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110.0
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
