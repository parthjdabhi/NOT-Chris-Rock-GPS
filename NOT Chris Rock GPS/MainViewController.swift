//
//  MainViewController.swift
//  NOT Chris Rock GPS
//
//  Created by Dustin Allen on 9/14/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import Foundation

class MainViewController: UIViewController, AudioRecorderViewControllerDelegate {
    
    
    @IBOutlet var googleMaps: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func googleMapsButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("MapViewController") as! MapViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func googlePlaces(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("GooglePlacesViewController") as! GooglePlacesViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func yelp(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("ViewController") as! ViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func weatherButton(sender: AnyObject) {
        let next = self.storyboard?.instantiateViewControllerWithIdentifier("OpenWeatherViewController") as! OpenWeatherViewController!
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func recordAudio(sender: AnyObject) {
    
        let controller = AudioRecorderViewController()
        controller.audioRecorderDelegate = self
        presentViewController(controller, animated: true, completion: nil)
    }
    
    func audioRecorderViewControllerDismissed(withFileURL fileURL: NSURL?) {
        // do something with fileURL
        dismissViewControllerAnimated(true, completion: nil)
    }
}
