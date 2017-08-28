//
//  Levels.swift
//  Halt
//
//  Created by Chirag Aswani on 8/21/17.
//  Copyright © 2017 Chig Apps. All rights reserved.
//
// VERY MESSY CODE!!!!

import UIKit


class Levels: UIViewController, UITableViewDataSource, UITableViewDelegate{
     let levels = ["num1", "num2", "num3", "num4","num5", "num6", "num7", "num8", "num9", "num10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return levels.count/2
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LevelTableViewCell
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        let currentRow = String(indexPath.row)
        if currentRow == "0"{
            if (silverVictories.contains(1)) || (goldVictories.contains(1)){
                if goldVictories.contains(1){
                    cell.button1.setImage(UIImage(named: ("num1gold")), for: UIControlState.normal) //gold win
                } else {
                cell.button1.setImage(UIImage(named: ("num1silver")), for: UIControlState.normal) //silver win
                }
            } else {
                cell.button1.setImage(UIImage(named: ("num1")), for: UIControlState.normal)
            }
            if (silverVictories.contains(2)) || (goldVictories.contains(2)){
                if goldVictories.contains(2){
                    cell.button2.setImage(UIImage(named: ("num2gold")), for: UIControlState.normal) //gold win
                } else {
                    cell.button2.setImage(UIImage(named: ("num2silver")), for: UIControlState.normal) //silver win
                }
            } else {
                cell.button2.setImage(UIImage(named: ("num2")), for: UIControlState.normal)
            }
        }
        if currentRow == "1"{
            if (silverVictories.contains(3)) || (goldVictories.contains(3)){
                if goldVictories.contains(3){
                    cell.button1.setImage(UIImage(named: ("num3gold")), for: UIControlState.normal) //gold win
                } else {
                    cell.button1.setImage(UIImage(named: ("num3silver")), for: UIControlState.normal) //silver win
                }
            } else {
                cell.button1.setImage(UIImage(named: ("num3")), for: UIControlState.normal)
            }
            if (silverVictories.contains(4)) || (goldVictories.contains(4)){
                if goldVictories.contains(4){
                    cell.button2.setImage(UIImage(named: ("num4gold")), for: UIControlState.normal) //gold win
                } else {
                    cell.button2.setImage(UIImage(named: ("num4silver")), for: UIControlState.normal) //silver win
                }
            } else {
                cell.button2.setImage(UIImage(named: ("num4")), for: UIControlState.normal)
            }
        }
        if currentRow == "2"{
            if (silverVictories.contains(5)) || (goldVictories.contains(5)){
                if goldVictories.contains(5){
                    cell.button1.setImage(UIImage(named: ("num5gold")), for: UIControlState.normal) //gold win
                } else {
                    cell.button1.setImage(UIImage(named: ("num5silver")), for: UIControlState.normal) //silver win
                }
            } else {
                cell.button1.setImage(UIImage(named: ("num5")), for: UIControlState.normal)
            }
            if (silverVictories.contains(6)) || (goldVictories.contains(6)){
                if goldVictories.contains(6){
                    cell.button2.setImage(UIImage(named: ("num6gold")), for: UIControlState.normal) //gold win
                } else {
                    cell.button2.setImage(UIImage(named: ("num6silver")), for: UIControlState.normal) //silver win
                }
            } else {
                cell.button2.setImage(UIImage(named: ("num6")), for: UIControlState.normal)
            }
        }
        if currentRow == "3"{
            if (silverVictories.contains(7)) || (goldVictories.contains(7)){
                if goldVictories.contains(7){
                    cell.button1.setImage(UIImage(named: ("num7gold")), for: UIControlState.normal) //gold win
                } else {
                    cell.button1.setImage(UIImage(named: ("num7silver")), for: UIControlState.normal) //silver win
                }
            } else {
                cell.button1.setImage(UIImage(named: ("num7")), for: UIControlState.normal)
            }
            if (silverVictories.contains(8)) || (goldVictories.contains(8)){
                if goldVictories.contains(8){
                    cell.button2.setImage(UIImage(named: ("num8gold")), for: UIControlState.normal) //gold win
                } else {
                    cell.button2.setImage(UIImage(named: ("num8silver")), for: UIControlState.normal) //silver win
                }
            } else {
                cell.button2.setImage(UIImage(named: ("num8")), for: UIControlState.normal)
            }
        }
        if currentRow == "4"{
            if (silverVictories.contains(9)) || (goldVictories.contains(9)){
                if goldVictories.contains(9){
                    cell.button1.setImage(UIImage(named: ("num9gold")), for: UIControlState.normal) //gold win
                } else {
                    cell.button1.setImage(UIImage(named: ("num9silver")), for: UIControlState.normal) //silver win
                }
            } else {
                cell.button1.setImage(UIImage(named: ("num9")), for: UIControlState.normal)
            }
            if (silverVictories.contains(10)) || (goldVictories.contains(10)){
                if goldVictories.contains(10){
                    cell.button2.setImage(UIImage(named: ("num10gold")), for: UIControlState.normal) //gold win
                } else {
                    cell.button2.setImage(UIImage(named: ("num10silver")), for: UIControlState.normal) //silver win
                }
            } else {
                cell.button2.setImage(UIImage(named: ("num10")), for: UIControlState.normal)
            }
        }
        
        return cell
    }

    


}
