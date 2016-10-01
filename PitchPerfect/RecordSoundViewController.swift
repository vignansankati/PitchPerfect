//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Vignan on 9/28/16.
//  Copyright © 2016 nwmissourinwmissouri. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundViewController: UIViewController, AVAudioRecorderDelegate {
    
    @IBOutlet weak var tapToRecordLBL: UILabel!
    @IBOutlet weak var recordBTN: UIButton!
    @IBOutlet weak var stopRecordingBTN: UIButton!
    
    var audioRecorder: AVAudioRecorder!
    
    @IBAction func record(sender: AnyObject) {
        tapToRecordLBL.text = "Recording in progress"
        stopRecordingBTN.enabled = true
        recordBTN.enabled = false
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory,.UserDomainMask, true)[0] as String
        
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = NSURL.fileURLWithPathComponents(pathArray)
        print(filePath)
        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord)
        
        try! audioRecorder = AVAudioRecorder(URL: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.meteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    
    @IBAction func stopRecording(sender: AnyObject) {
        tapToRecordLBL.text = "Tap to record"
        recordBTN.enabled = true
        stopRecordingBTN.enabled = false
        
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
    
    override func viewDidLoad() {
        print("Hello Pitch perfect")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func audioRecorderDidFinishRecording(recorder: AVAudioRecorder, successfully flag: Bool) {
        print("Recording finished")
        if flag {
            self.performSegueWithIdentifier("stopRecordingSegue", sender: audioRecorder.url)
        } else {
            print("Save failed")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        stopRecordingBTN.enabled = false
    }

}

