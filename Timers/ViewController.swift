//
//  ViewController.swift
//  Timers
//
//  Created by Melikşah on 7.07.2019.
//  Copyright © 2019 Dipcin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 50
        timeLabel.text = String(counter)
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.timeFunction), userInfo: nil, repeats: true)
    }
    
    @objc func timeFunction() {
        timeLabel.text = String(counter)
        counter = counter - 1
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time Is Up"
    }

}

}
