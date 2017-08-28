//
//  Settings.swift
//  Halt
//
//  Created by Chirag Aswani on 8/21/17.
//  Copyright © 2017 Chig Apps. All rights reserved.
//

import UIKit

//UIView Extension to round UIView backdrop
extension UIView {
    func dropShadow(scale: Bool = true) {
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 5;
    }
}

class Settings: UIViewController {
    
    //UIOutlets
    @IBOutlet weak var backdrop: UIView!
    
    //Resets silver and gold victories
    @IBAction func resetprogress(_ sender: Any) {
        silverVictories = [0]
        goldVictories = [0]
        UserDefaults.standard.set(goldVictories, forKey: "goldvictories")
        UserDefaults.standard.set(silverVictories, forKey: "silvervictories")
        UserDefaults.standard.synchronize()
    }
    
    //Hides the status bar
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //Loads rounded corners on backdrop and sets background color
    override func viewDidLoad() {
        super.viewDidLoad()
        backdrop.dropShadow()
        self.view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
