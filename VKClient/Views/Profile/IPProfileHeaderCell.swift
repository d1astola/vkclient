//
//  IPProfileHeaderCell.swift
//  VKClient
//
//  Created by Игорь Пак on 30/05/2018.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import SDWebImage

class IPProfileHeaderCell: UITableViewCell {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    private let profileCoreData = IPVKProfileCoreData()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func identifier() -> String {
        return "profileHeaderCell"
    }
    
    public func configure() {
        let profile = profileCoreData.getProfileInfo()
        
        self.avatarImageView.sd_setImage(with: URL(string: profile.avatarURL ?? ""), completed: nil)
        self.avatarImageView.layer.cornerRadius = self.avatarImageView.frame.width / 2
        self.avatarImageView.clipsToBounds = true
        self.nameLabel.text = String.init(format: "%@ %@", profile.firstName ?? "err", profile.secondName ?? "err")
        self.statusLabel.text = profile.status
    }
    
}
