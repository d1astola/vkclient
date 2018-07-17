//
//  IPFriendsDataSource.swift
//  VKClient
//
//  Created by Игорь Пак on 28/06/2018.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import MagicalRecord
import SVProgressHUD

class IPFriendsDataSource: NSObject, UITableViewDelegate, UITableViewDataSource {

    private let friendsCoreData = IPVKFriendsCoreData()
    private let APIService = IPVKAPIService()
    private var fetchedResultsController: NSFetchedResultsController<IPVKFriends>?
    private var tableView: UITableView?
    
    public func configure(_ tableView: UITableView) {
        self.tableView = tableView
        self.fetchedResultsController = IPVKFriends.mr_fetchAllSorted(by: "creationDate", ascending: false, with: nil, groupBy: nil, delegate: self) as? NSFetchedResultsController<IPVKFriends>
    }
    
    public func switchSegmentedControl(_ value: Int) {
        if value == 0 {
            self.fetchedResultsController = IPVKFriends.mr_fetchAllSorted(by: "creationDate", ascending: false, with: nil, groupBy: nil, delegate: self) as? NSFetchedResultsController<IPVKFriends>
        } else {
            self.fetchedResultsController = IPVKFriends.mr_fetchAllSorted(by: "creationDate", ascending: false, with: NSPredicate(format: "online = true"), groupBy: nil, delegate: self) as? NSFetchedResultsController<IPVKFriends>
        }
        SVProgressHUD.show()
        self.tableView?.isHidden = true
        APIService.updateFriends {
            SVProgressHUD.dismiss()
            self.tableView?.isHidden = false
        }
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: IPFriendCell.identifier()) as! IPFriendCell
        cell.configure(self.fetchedResultsController?.object(at: indexPath) ?? IPVKFriends())
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let results = self.fetchedResultsController?.fetchedObjects ?? []
        return results.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110.0
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

extension IPFriendsDataSource: NSFetchedResultsControllerDelegate {
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        self.tableView?.reloadData()
    }
    
}
