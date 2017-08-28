//
//  LevelTableViewCell.swift
//  Halt
//
//  Created by Chirag Aswani on 8/22/17.
//  Copyright © 2017 Chig Apps. All rights reserved.
//

import UIKit

var transition_level: Int = 0
class LevelTableViewCell: UITableViewCell {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    @IBAction func test2(_ sender: Any) { //button2 action
        if button2.currentImage == UIImage(named: "num2"){
            transition_level = 2
        }
        if button2.currentImage == UIImage(named: "num4"){
            transition_level = 4
        }
        if button2.currentImage == UIImage(named: "num6"){
            transition_level = 6
        }
        if button2.currentImage == UIImage(named: "num8"){
            transition_level = 8
        }
        if button2.currentImage == UIImage(named: "num10"){
            transition_level = 10
        }
        if button2.currentImage == UIImage(named: "num2silver"){
            transition_level = 2
        }
        if button2.currentImage == UIImage(named: "num4silver"){
            transition_level = 4
        }
        if button2.currentImage == UIImage(named: "num6silver"){
            transition_level = 6
        }
        if button2.currentImage == UIImage(named: "num8silver"){
            transition_level = 8
        }
        if button2.currentImage == UIImage(named: "num10silver"){
            transition_level = 10
        }
        if button2.currentImage == UIImage(named: "num2gold"){
            transition_level = 2
        }
        if button2.currentImage == UIImage(named: "num4gold"){
            transition_level = 4
        }
        if button2.currentImage == UIImage(named: "num6gold"){
            transition_level = 6
        }
        if button2.currentImage == UIImage(named: "num8gold"){
            transition_level = 8
        }
        if button2.currentImage == UIImage(named: "num10gold"){
            transition_level = 10
        }
    }
    @IBAction func test(_ sender: Any) { //button1 action
        if button1.currentImage == UIImage(named: "num1"){
            transition_level = 1
        }
        if button1.currentImage == UIImage(named: "num3"){
            transition_level = 3
        }
        if button1.currentImage == UIImage(named: "num5"){
            transition_level = 5
        }
        if button1.currentImage == UIImage(named: "num7"){
            transition_level = 7
        }
        if button1.currentImage == UIImage(named: "num9"){
            transition_level = 9
        }
        if button1.currentImage == UIImage(named: "num1silver"){
            transition_level = 1
        }
        if button1.currentImage == UIImage(named: "num3silver"){
            transition_level = 3
        }
        if button1.currentImage == UIImage(named: "num5silver"){
            transition_level = 5
        }
        if button1.currentImage == UIImage(named: "num7silver"){
            transition_level = 7
        }
        if button1.currentImage == UIImage(named: "num9silver"){
            transition_level = 9
        }
        if button1.currentImage == UIImage(named: "num1gold"){
            transition_level = 1
        }
        if button1.currentImage == UIImage(named: "num3gold"){
            transition_level = 3
        }
        if button1.currentImage == UIImage(named: "num5gold"){
            transition_level = 5
        }
        if button1.currentImage == UIImage(named: "num7gold"){
            transition_level = 7
        }
        if button1.currentImage == UIImage(named: "num9gold"){
            transition_level = 9
        }
    }
}
