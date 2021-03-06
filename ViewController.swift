//
//  ViewController.swift
//  AudioPlayer
//
//  Created by Felicia Weathers on 9/8/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()

    @IBAction func playButtonTapped(_ sender: AnyObject) {
        
        player.play()

    }
    
    @IBAction func pauseButtonTapped(_ sender: UIButton) {
        
        player.pause()
        
    }
    
    @IBAction func volumeSlider(_ sender: UISlider) {
        
        player.volume = sender.value
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let audioPath = Bundle.main.path(forResource: "mozart", ofType: "mp3")
        
        do {
            
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
        } catch {
            
            //process any errors
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

