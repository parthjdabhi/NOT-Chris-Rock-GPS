//
//  ViewController.swift
//  NOT Chris Rock GPS
//
//  Created by Dustin Allen on 9/13/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import Foundation
import CoreLocation
import Alamofire
import SwiftyJSON

class AppState: NSObject {
    
    static let sharedInstance = AppState()
    
    var signedIn = false
    var displayName: String?
    var photoUrl: NSURL?
}

//Global Data
var CLocation:CLLocation = CLLocation()
var CLocationPlace:String = String()

var userDetail:Dictionary<String,AnyObject> = [:]
var timeline:Array<JSON> = []
var myTimeline:Array<JSON> = []
var searchTimeline:Array<JSON> = []
var selectedPhoto:JSON = []