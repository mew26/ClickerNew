//
//  ViewController.swift
//  ClickerNew
//
//  Created by Jasper Beede on 10/27/21.
//  Copyright © 2021 Jasper Beede. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    //MARK: - Number counter
    @IBOutlet weak var clicker: UIButton!
   
    @IBOutlet weak var mny: UISwitch!
    
    @IBOutlet weak var counter: UILabel!
    var money:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    func updateControls() {
        while money >= 10{

            repeat{
                if money == 10{
                //    on.toggle()
                }
                
               // money+=1.00
                clicker.isEnabled = mny.isOn
                mny.isOn = true
                Thread.sleep(forTimeInterval: 0.5)
                while money > 10 && mny.isOn == true {
                    money += 1
                    continue
                }
                return counter.text = ("$\(money)")
            }while money >= 10
          //  if money == 10{
            //    mny.isOn = true
            //}
            
            
        }
         updateControls()
    }
    
    //MARK:- Clicker & Auto Clicker
        @IBAction func clicker(_ sender: UIButton) {
            money += 1
         //   x+=1
            counter.text = ("$\(money)")
//        func mny(_ sender: UISwitch) {
            while money >= 10 && mny.isOn == true{
                 
                while money >= 10 {
            //on.toggle()
                    mny.isOn = true
                    repeat{
                        clicker.isEnabled = mny.isOn
//                      Thread.sleep(forTimeInterval: 0.5)
                        while money >= 10{
                            Thread.sleep(forTimeInterval: 1)
                            money += 1
                            return counter.text = ("$\(money)")
                        
                        }
                    
                     money+=1
                     clicker.isEnabled = mny.isOn
                     mny.isOn = true
                     Thread.sleep(forTimeInterval: 0.5)
                   while money >= 5 && mny.isOn == true && false{
                       money += 1
                    return counter.text = ("$\(money)")
                   }
                return counter.text = ("$\(money)")
                }while mny.isOn == true && clicker.isEnabled
            
      //  counter.text = ("$\(money)")
            //updateControls()
        //   }
        }
            
    
    }
}


}
