//
//  AreaTableViewCell.swift
//  TravelTaiwan
//
//  Created by 翁燮羽 on 2021/4/28.
//

import UIKit

class AreaTableViewCell: UITableViewCell {

    //cell照片顯示
    @IBOutlet weak var areaCellImage: UIImageView!
    //cell文字顯示
    @IBOutlet weak var areaCellLableTex: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
