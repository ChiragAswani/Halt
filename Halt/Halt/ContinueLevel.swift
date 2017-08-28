//
//  ContinueLevel.swift
//  Halt
//
//  Created by Chirag Aswani on 8/21/17.
//  Copyright © 2017 Chig Apps. All rights reserved.
//

//imported packages
import UIKit
import AVFoundation

//global variables
var timer = Timer()
var seconds: Int = 0
var fractions: Int = 0
var final_seconds: Int?
var final_fractions: Int?
var startStopWatch: Bool = true
var tick: AVAudioPlayer = AVAudioPlayer()
var displaystopwatchbool: Bool = true


//fade in & out methods
extension UIView {
    func fadeIn(_ duration: TimeInterval = 0.0, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: completion)  }
    
    func fadeOut(_ duration: TimeInterval = 0.85, delay: TimeInterval = 0.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 0.0
        }, completion: completion)
    }
}

class ContinueLevel: UIViewController  {
    
    //Local Variables
    var isMuted = false
    var stopWatch: String = ""
    
    //UILabels
    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var stop_watch: UILabel!
    //UIButtons
    @IBOutlet weak var startstop: UIButton!
    @IBOutlet weak var backbutton: UIButton!
    @IBOutlet weak var muteunmute: UIButton!
    @IBOutlet weak var leveldifficulty: UISwitch!
    //UIView
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var star: UIImageView!
    
    //Mute & Unmute button
    @IBAction func muteunmute(_ sender: Any) {
        if isMuted == false{
            isMuted = true
            tick.setVolume(0, fadeDuration: 0.0)
        muteunmute.setImage(UIImage(named:"mute"), for: UIControlState.normal)
        }
        else{
            isMuted = false
        muteunmute.setImage(UIImage(named:"unmute"), for: UIControlState.normal)
            tick.setVolume(1, fadeDuration: 0.0)
            
        }
    }
    
    //Displays UILabel stopwatch
    @IBAction func displaystopwatch(_ sender: Any) {
        if displaystopwatchbool == false{
            displaystopwatchbool = true
        } else {
            displaystopwatchbool = false
        }
    }
    
    //Segue back button and stops tick
    @IBAction func backbutton(_ sender: Any) {
        tick.stop()
    }
    
    //Starts and stops the stopwatch
    @IBAction func startTimer(_ sender: Any) {
        star.isHidden = true
        if startStopWatch == true{
            backbutton.isEnabled = false
            background.image = UIImage(named:"rocketbg")
            if displaystopwatchbool == true{
                stop_watch.fadeOut()
            }
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(ContinueLevel.updateStopwatch), userInfo: nil, repeats: true)
            startStopWatch = false
            startstop.setImage(UIImage(named:"stop"), for: UIControlState.normal)

        }
        else {
            backbutton.isEnabled = true
            timer.invalidate()
            stop_watch.fadeIn()
            tick.stop()
            if (seconds == transition_level) && (fractions == 0) { 
                if displaystopwatchbool == true{
                    star.image = UIImage(named: "goldstar")
                    goldVictories.append(seconds)
                    UserDefaults.standard.set(goldVictories, forKey: "goldvictories")
                    UserDefaults.standard.synchronize()
                } else {
                    star.image = UIImage(named: "silverstar")
                    silverVictories.append(seconds)
                    UserDefaults.standard.set(silverVictories, forKey: "silvervictories")
                    UserDefaults.standard.synchronize()
                }
                star.isHidden = false
                background.loadGif(name: "rocketlaunch")
            }
            final_seconds = seconds
            final_fractions = fractions
            fractions = 0
            seconds = 0
            stop_watch.isHidden = false
            if (String(seconds) == level.text){
                //action here
            }
            startStopWatch = true
            startstop.setImage(UIImage(named:"start"), for: UIControlState.normal)
        }
        
    }
    
    //Hides the status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //Sets background image, audio path, and UI defaults
    override func viewDidLoad() {
        super.viewDidLoad()
        
        background.image = UIImage(named:"rocketbg")
        displaystopwatchbool = true
        star.isHidden = true
        do {
            let audioPath = Bundle.main.path(forResource: "tick", ofType: "mp3")
            try tick = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        } catch {
            
        }
        stop_watch.text = "0.00"
        level.text = String(transition_level)
        
    }
    
    //runs stopwatch
    func updateStopwatch(){
        fractions += 1
        if fractions == 100{
            tick.play()
            seconds += 1
            fractions = 0
        }
        if seconds == 60{
            seconds = 0
        }
        stopWatch = "\(seconds).\(fractions)"
        stop_watch.text = stopWatch
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
