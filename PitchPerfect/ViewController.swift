//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Vignan on 9/28/16.
//  Copyright © 2016 nwmissourinwmissouri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tapToRecordLBL: UILabel!
    @IBOutlet weak var recordBTN: UIButton!
    @IBOutlet weak var stopRecordingBTN: UIButton!
    
    
    @IBAction func record(sender: AnyObject) {
        tapToRecordLBL.text = "Recording in progress"
        stopRecordingBTN.enabled = true
        recordBTN.enabled = false
    }
    
    @IBAction func stopRecording(sender: AnyObject) {
        tapToRecordLBL.text = "Tap to record"
        recordBTN.enabled = true
        stopRecordingBTN.enabled = false
    }
    
    override func viewDidLoad() {
        print("Hello Pitch perfect")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        stopRecordingBTN.enabled = false
    }

}

