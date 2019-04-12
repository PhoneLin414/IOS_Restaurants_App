//
//  RestaurantTableViewCell.swift
//  RestaurantApp
//
//  Created by phonelin on 4/12/19.
//  Copyright © 2019 aceplussolutions. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet weak var imgvRestaurant: UIImageView!
    @IBOutlet weak var imgvMarker: UIImageView!
    @IBOutlet weak var lblRestaurantName: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
