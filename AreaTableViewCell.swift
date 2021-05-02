//
//  AreaTableViewCell.swift
//  TravelTaiwan
//
//  Created by 翁燮羽 on 2021/4/28.
// 自定義cell



import UIKit

class AreaTableViewCell: UITableViewCell {

    //cell照片顯示
    @IBOutlet weak var areaCellImage: UIImageView!
    //cell文字顯示
    @IBOutlet weak var areaCellLableTex: UILabel!
    
    //寫 hotTravelTableViewController cell要顯示的資料
    func updata(with areas:Area){
        areaCellImage.image = UIImage(named: areas.areaImage)
        areaCellLableTex.text = areas.areaName
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
