//
//  DetailsFoodView.swift
//  RestaurantApp
//
//  Created by phonelin on 4/12/19.
//  Copyright © 2019 aceplussolutions. All rights reserved.
//

import UIKit

import MapKit

@IBDesignable class DetailsFoodView : BaseView{
    
    @IBOutlet weak var collectionView : UICollectionView?
    
    @IBOutlet weak var pageControl : UIPageControl!
    
    @IBOutlet weak var lblPrice : UILabel!
    @IBOutlet weak var lblHour : UILabel!
    @IBOutlet weak var lblLocation : UILabel!
    @IBOutlet weak var lblRating : UILabel!
    
    @IBOutlet weak var mapView : MKMapView!
    
    @IBAction func handleControl(_sender : UIPageControl){
        
    }
    
    
}
