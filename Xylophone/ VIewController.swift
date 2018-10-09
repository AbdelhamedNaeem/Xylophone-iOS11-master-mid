//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation


class ViewController: UIViewController , AVAudioPlayerDelegate{
    
    var player : AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        if sender.tag == 1 {
            playingSound(_resource: "note1", "wav")
        }else if sender.tag == 2 {
            playingSound(_resource: "note2", "wav")
        }else if sender.tag == 3 {
            playingSound(_resource: "note3", "wav")
        }else if sender.tag == 4 {
            playingSound(_resource: "note4", "wav")
        }else if sender.tag == 5 {
            playingSound(_resource: "note5", "wav")
        }else if sender.tag == 6 {
            playingSound(_resource: "note6", "wav")
        }else {
            playingSound(_resource: "note7", "wav")
        }
        
        
       
    }
    
    func playingSound(_resource : String ,_ extintion : String){
        let soundURL = Bundle.main.url(forResource:_resource, withExtension: extintion)

        do {
            player = try AVAudioPlayer(contentsOf: soundURL!)
          
        } catch {
            print("error loading file")
            // couldn't load file :(
        }

        player?.play()
    }

//another way to create sound in your app using AudioToolBox library
//    func playingSound(_resource : String ,_ extintion : String){
//
//        if let soundURL = Bundle.main.url(forResource: _resource, withExtension: extintion) {
//            var mySound: SystemSoundID = 0
//            AudioServicesCreateSystemSoundID(soundURL a CFURL, &mySound)
//            // Play
//            AudioServicesPlaySystemSound(mySound);
//        }
//
//    }

}



