//
//  ViewController.swift
//  Stopwatch
//
//  Created by karur4n on 2015/10/03.
//  Copyright © 2015年 karur4n. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    
    var time = 0
    
    @IBOutlet weak var timerLabel: UILabel!

    func increaseTimer() {
        time++
        
        timerLabel.text = "\(time)"
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timerLabel.text = "\(time)"
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

