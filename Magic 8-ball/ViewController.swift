//
//  ViewController.swift
//  Magic 8-ball
//
//  Created by Jason Cox on 6/17/20.
//  Copyright © 2020 Jason Cox. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var ballImage: NSImageView!
    
    let ballArray = ["ball1", "ball2","ball3","ball4"]
    var randomBallNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func askButton(_ sender: Any) {
        randomBall()
    }
    
    func randomBall() {
        randomBallNumber = Int(arc4random_uniform(4))
        ballImage.image = NSImage(named: ballArray[randomBallNumber])
    }
    
}

