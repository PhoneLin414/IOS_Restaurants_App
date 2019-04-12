//
//  BaseView.swift
//  RestaurantApp
//
//  Created by phonelin on 4/12/19.
//  Copyright © 2019 aceplussolutions. All rights reserved.
//

import UIKit

@IBDesignable class BaseView : UIView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.Configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
        self.Configure()
    }
    
    func Configure(){
        
    }
    
}
