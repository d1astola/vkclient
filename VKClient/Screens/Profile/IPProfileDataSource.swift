//
//  IPProfileDataSource.swift
//  VKClient
//
//  Created by Tester on 5/31/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit

class IPProfileDataSource: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath == IndexPath(row: 0, section: 0)) {
            let cell = tableView.dequeueReusableCell(withIdentifier: IPProfileHeaderCell.identifier()) as! IPProfileHeaderCell
            cell.configure()
            return cell
        }
        else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath == IndexPath(row: 0, section: 0)) {
            return 136.0
        }
        else {
            return 50
        }
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
