//
//  ViewController.swift
//  Stopwatch
//
//  Created by Amber Morris on 2015-07-24.
//  Copyright (c) 2015 Amber Morris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var count = 0
    var countMinutes = 0
    
    func updateTime() {
        
        count++
        
        time.text = "\(count)"
        
        if count == 60 {
            
            time.hidden = true
            
            countMinutes++
            
            minuteLabel.text = "\(countMinutes)"
            time.text = "0"
            
            count = 0
        }
        
        if count < 60 {
            time.hidden = false
        }
        
    }
    
    
    @IBOutlet weak var minuteLabel: UILabel!
    
    @IBOutlet weak var time: UILabel!
    
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
        
        count = 0
        
        time.text = "0"
        
    }
    
    
    @IBAction func start(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
        
        
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

