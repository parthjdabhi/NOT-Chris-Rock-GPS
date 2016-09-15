//
//  RecordViewController.swift
//  NOT Chris Rock GPS
//
//  Created by Dustin Allen on 9/14/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit
import AVFoundation

class RecordViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
    
    var recordButton: UIButton!
    
    var recordingSession: AVAudioSession!
    var audioRecorder: AVAudioRecorder!
}