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
    
    @IBAction func record(sender: AnyObject) {
        tapToRecordLBL.text = "Recording in progress"
    }
    
    @IBAction func stopRecording(sender: AnyObject) {
        tapToRecordLBL.text = "Tap to record"
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


}

