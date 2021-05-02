// 照片牆 自定義 cell

import UIKit

class areasmagesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var areasImageVIew: UIImageView!
   
    @IBOutlet weak var imageWidth: NSLayoutConstraint!
    static let width = floor((UIScreen.main.bounds.width - 3 * 2) / 3)
        override func awakeFromNib() {
            super.awakeFromNib()
            imageWidth.constant = Self.width
        }
    }
    
    

