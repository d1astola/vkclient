//
//  IPMenuCell.swift
//  VKClient
//
//  Created by Tester on 6/26/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit

class IPMenuCell: UITableViewCell {

    public var key: String = ""
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var menuLogoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func configureWith(title: String?, key:String?) {
        self.titleText.text = title
        self.key = key ?? ""
        self.menuLogoImageView.image = UIImage(named: self.key)
    }
    
    static public func identifier() -> String {
        return "menuCell"
    }
}
