//
//  LocationView.swift
//  RestaurantApp
//
//  Created by phonelin on 4/12/19.
//  Copyright © 2019 aceplussolutions. All rights reserved.
//

import UIKit

@IBDesignable class LocationView: BaseView {
    
    @IBOutlet weak var btnAllow : UIButton!
    @IBOutlet weak var btnNextTime : UIButton!
   
    var didTapAllowbtn : (()->Void)?
    
    @IBAction func Allow(_ sender: UIButton) {
        
        didTapAllowbtn?()
        
    }
    
    @IBAction func Deny(_ sender: UIButton) {
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
