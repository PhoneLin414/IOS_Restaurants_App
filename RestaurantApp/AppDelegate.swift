//
//  AppDelegate.swift
//  RestaurantApp
//
//  Created by phonelin on 4/11/19.
//  Copyright © 2019 aceplussolutions. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let locationservice = LocationServices()
    let storyboard = UIStoryboard(name: "Main", bundle: nil)


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        switch locationservice.status {
        case .denied,.notDetermined,.restricted:
            let locationViewController = storyboard.instantiateViewController(withIdentifier: "LocationViewController") as? LocationViewController
            
            locationViewController?.locationService = locationservice
            
            window?.rootViewController = locationViewController
            
        default:
            assertionFailure()
        }
        
        window?.makeKeyAndVisible()
        
        return true
    }

}

