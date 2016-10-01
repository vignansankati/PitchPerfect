//
//  PlaySoundViewController.swift
//  PitchPerfect
//
//  Created by Vignan on 9/30/16.
//  Copyright © 2016 nwmissourinwmissouri. All rights reserved.
//

import UIKit

class PlaySoundViewController: UIViewController {
    
    var recordedAudioURL:NSURL!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "stopRecordingSegue" {
            let playSoundViewController = segue.destinationViewController as! PlaySoundViewController
            let recordedAudioURL = sender as! NSURL
            playSoundViewController.recordedAudioURL = recordedAudioURL
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
