//
//  ViewController.swift
//  BugExpose
//
//  Created by Filippos Theodorakis on 2/16/15.
//  Copyright (c) 2015 Ena LLC. All rights reserved.
//

import UIKit

let MyCustomNotification = "myCustomNotification"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.addObserver(self, selector: "initS:", name: MyCustomNotification, object: nil)
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: Selector("update"), userInfo: nil, repeats: false)
    }
    
    deinit {
        println("Got Deinitialized when it shouldn't")
        println("Change the notification selector ViewController.swift to not start with 'init' name")
        println("e.g. change it to 'pinitSync' and see how the deinit does not get called")
        println("Make sure you change both the function name and the selctor in the addObserver call")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func update() {
        NSNotificationCenter.defaultCenter().postNotificationName(MyCustomNotification, object: nil)
    }

    func initS(notification: NSNotification) {
        println("Got notification")
    }

}

