//
//  ItemTableViewCell.swift
//  LoginApp
//
//  Created by Prolins on 30/05/16.
//  Copyright © 2016 Prolins. All rights reserved.
//

import UIKit
import Kingfisher

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var lb_text: UILabel!
    
    @IBOutlet weak var img_photo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setCell(img: String, text: String){
        let url = NSURL(string: "http://suporte.prolins.com.br/nicecook/images/recipe/" + img)!
        self.lb_text.text = text
        self.img_photo.kf_setImageWithURL(url, placeholderImage: nil)
        
//        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)){
//            let data = NSData(contentsOfURL: url)
//            dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                self.img_photo.image = UIImage(data: data!)
//            })
//        }
        
    }
    
}
