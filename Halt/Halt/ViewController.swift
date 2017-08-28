//
//  ViewController.swift
//  Halt
//
//  Created by Chirag Aswani on 8/21/17.
//  Copyright © 2017 Chig Apps. All rights reserved.
//

import UIKit
import GameKit

var silverVictories: [Int] = [0]
var goldVictories: [Int] = [0]

class ViewController: UIViewController {
    
    //UIOutlets
    @IBOutlet weak var frontlabel: UILabel!
    @IBOutlet weak var levels: UIButton!
    @IBOutlet weak var backgroundimg: UIImageView!
    @IBOutlet weak var continueoutlet: UIButton!
    
    //gear button links to settings UIView
    @IBAction func settings(_ sender: Any) {
        performSegue(withIdentifier: "settings", sender: self)
    }
    
    //level button links to levels UIView
    @IBAction func level(_ sender: Any) {
        performSegue(withIdentifier: "level", sender: self)
    }
    
    //hides status bar on current UIView
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //play button goes to a random level by setting a random transition_level
    @IBAction func continue_level(_ sender: Any) {
        let randomlevel = GKRandomSource.sharedRandom().nextInt(upperBound: 10)
        transition_level = randomlevel + 1
        performSegue(withIdentifier: "continuelevel", sender: self)
    }
    
    //Loads default gold and silver victories from memory & sets design elements 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.bringSubview(toFront: frontlabel)
        self.view.bringSubview(toFront: levels)
        self.view.bringSubview(toFront: continueoutlet)
        backgroundimg.image = (UIImage(named: "background"))
        //print("test")
        //print(goldVictories)
        //print(silverVictories)
        silverVictories = UserDefaults.standard.array(forKey: "silvervictories") as! [Int]
        goldVictories = UserDefaults.standard.array(forKey: "goldvictories") as! [Int]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

