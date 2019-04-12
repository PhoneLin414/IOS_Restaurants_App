//
//  LocationViewController.swift
//  RestaurantApp
//
//  Created by phonelin on 4/12/19.
//  Copyright © 2019 aceplussolutions. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {
    
    @IBOutlet weak var locationView : LocationView!
    
    var locationService : LocationServices?

    override func viewDidLoad() {
        super.viewDidLoad()

        locationView.didTapAllowbtn = { [weak self] in
            self?.locationService?.requestLocationAuthorization()
        }
        
        locationService?.didChangeStatus = {[weak self] success in
            self?.locationService?.getLocation()
        }
        
        locationService?.newLocation = {[weak self] Result in
            switch Result {
            case .Success(let location):
                print(location)
            case .Failure(let error) :
                assertionFailure("Error getting user location \(error)")
           
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
