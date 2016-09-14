//
//  OpenWeatherViewController.swift
//  NOT Chris Rock GPS
//
//  Created by Dustin Allen on 9/14/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit
import CoreLocation

class OpenWeatherViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weather = WeatherGetter()
        weather.getWeather("Tampa")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
