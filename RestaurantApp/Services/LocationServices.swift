//
//  LocationServices.swift
//  RestaurantApp
//
//  Created by phonelin on 4/12/19.
//  Copyright © 2019 aceplussolutions. All rights reserved.
//

import Foundation

import CoreLocation

enum Result<T>{
    
    case Success(T)
    case Failure(Error)
    
}

final class LocationServices : NSObject{
    
    private let manager : CLLocationManager
    
//    init(manager : CLLocationManager = .init()) {
//
//        self.manager = manager
//        super.init()
//        manager.delegate = self
//
//    }

     init(manager : CLLocationManager = .init()) {
        
        self.manager = manager
        super.init()
        manager.delegate = self
    }
    
    var newLocation : ((Result<CLLocation>) -> Void)?
    
    var didChangeStatus : ((Bool) -> Void)?
    
    var status : CLAuthorizationStatus{
        return CLLocationManager.authorizationStatus()
    }
    
    func requestLocationAuthorization(){
        manager.requestWhenInUseAuthorization()
    }
    
    func getLocation(){
        manager.requestLocation()
    }
    
    
}

extension LocationServices : CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
       newLocation?(.Failure(error))
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       if let location = locations
        .sorted(by: {$0.timestamp > $1.timestamp}) //locations arry ko timenae sort lote
        .first{//locations arry htl ka first value u
            newLocation?(.Success(location))
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .restricted,.notDetermined,.denied:
           didChangeStatus?(false)
        default:
            didChangeStatus?(true)
        }
    }
    
}
