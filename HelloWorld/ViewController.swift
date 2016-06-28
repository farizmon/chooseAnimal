//
//  ViewController.swift
//  HelloWorld
//
//  Created by Fariz Izwan on 28/06/2016.
//  Copyright © 2016 Fariz Izwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    weak var greetingLabel: UILabel!
    weak var greetButton: UIButton!
    weak var byeButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.redColor()
        
        let label: UILabel = UILabel(frame: CGRect(x: 80, y: 40, width: 160, height: 100))
        label.text = "Choose Animal"
        label.textColor = UIColor.whiteColor()
        label.backgroundColor = UIColor.brownColor()
        self.view.addSubview(label)
        self.greetingLabel = label
        
        let greetButton: UIButton = UIButton(frame: CGRect(x: 16, y: 300, width: 80, height: 50))
        greetButton.backgroundColor = UIColor.blackColor()
        greetButton.setTitle("Kucing",forState: UIControlState.Normal)
        greetButton.addTarget(self, action: "buton:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(greetButton)
        self.greetButton = greetButton
        
        let byeButton: UIButton = UIButton(frame: CGRect(x: 300, y: 300, width: 80, height: 50))
        byeButton.backgroundColor = UIColor.blackColor()
        byeButton.setTitle("Doggi",forState: UIControlState.Normal)
        byeButton.addTarget(self, action: "buton:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(byeButton)
        self.greetButton = byeButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buton(sender: AnyObject){
        if (sender as! UIButton) == self.greetButton{
            self.greetingLabel.text = "🐶"
        }else{
            self.greetingLabel.text = "🐱"
        }
    }
    


}

