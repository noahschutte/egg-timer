//
//  ViewController.swift
//  Menu Bars
//
//  Created by Noah Schutte on 4/30/17.
//  Copyright © 2017 Buddy Ghee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var seconds = 210
    
    
    @IBAction func leftNavPressed(_ sender: Any) {
        
        timer.invalidate()
        
    }
    
    @IBAction func rightNavPressed(_ sender: Any) {
    
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
    }
    
    func processTimer() {
        
        if seconds > 0 {
        
            seconds -= 1
        
            secondsDisplay.text = String(seconds)
            
        } else {
            
            timer.invalidate()
            
        }
    }
    
    @IBOutlet var secondsDisplay: UILabel!
    
    @IBAction func decrement10Seconds(_ sender: Any) {
        
        if seconds > 10 {
         
            seconds -= 10
            
            secondsDisplay.text = String(seconds)
            
        }
        
    }

    @IBAction func resetTimer(_ sender: Any) {
        
        seconds = 210
        
        secondsDisplay.text = String(seconds)
        
    }
    
    @IBAction func increment10Seconds(_ sender: Any) {
        
        seconds += 10
        
        secondsDisplay.text = String(seconds)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

