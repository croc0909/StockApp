//
//  SearchTableViewCell.swift
//  StockApp
//
//  Created by AndyLin on 2022/7/20.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    @IBOutlet var StockBackgroundImageView:UIImageView!
    @IBOutlet var StockLogoImageView:UIImageView!
    @IBOutlet var StockCodeLabel:UILabel!
    @IBOutlet var StockPriceLabel:UILabel!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        StockBackgroundImageView.layer.cornerRadius = 20;
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
