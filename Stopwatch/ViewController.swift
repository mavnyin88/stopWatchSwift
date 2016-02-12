//
//  ViewController.swift
//  Stopwatch
//
//  Created by Michael Avnyin on 1/31/16.
//  Copyright © 2016 Michael Avnyin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    
    var time = 0
    
    @IBOutlet var timeLabel: UILabel!
    
    func incTimer () {
        
        time++
        timeLabel.text = String(time)
        
    }
    
    @IBAction func start(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector ("incTimer"), userInfo: nil, repeats: true)
    }
    
    @IBAction func reset(sender: AnyObject) {
        timer.invalidate()
        
        time = 0
        
        timeLabel.text = "0"
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
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

