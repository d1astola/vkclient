//
//  IPFriendCell.swift
//  VKClient
//
//  Created by Игорь Пак on 28/06/2018.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import MagicalRecord
import SDWebImage
import ChameleonFramework

class IPFriendCell: UITableViewCell {

    @IBOutlet weak var friendImageView: UIImageView!
    @IBOutlet weak var friendNameLabel: UILabel!
    @IBOutlet weak var statusOnlineView: UIView!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(_ friend: IPVKFriends) {
        friendImageView.sd_setImage(with: URL(string: friend.avatarURL ?? "https://vk.com/images/camera_100.png"), completed: nil)
        friendImageView.layer.cornerRadius = friendImageView.frame.size.height / 2
        friendImageView.clipsToBounds = true
        friendNameLabel.text = (friend.firstName ?? "error") + " " + (friend.secondName ?? "error")
        statusOnlineView.layer.cornerRadius = statusOnlineView.frame.size.height / 2.0
        if (friend.online) {
            statusOnlineView.backgroundColor = UIColor.flatGreen()
            statusLabel.text = NSLocalizedString("mainFriendOnlineStatus", tableName: "IPMain", bundle: Bundle.main, value: "", comment: "")
        }
        else {
            statusOnlineView.backgroundColor = UIColor.flatRed()
            statusLabel.text = NSLocalizedString("mainFriendOfflineStatus", tableName: "IPMain", bundle: Bundle.main, value: "", comment: "")
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    static public func identifier() -> String {
        return "friendsCell"
    }
    
}
