//
//  ViewController.swift
//  FirstApp3
//
//  Created by Myoung-Wan Koo on 2018. 3. 21..
//  Copyright © 2018년 Myoung-Wan Koo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var messageButton: UIButton!
    
    var lightOn = true;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doButtonTap(_ sender: UIButton) {
        print("Button Touched")
        if lightOn == true{
            self.messageLabel.text = "White"
            self.messageButton.setTitle("Off", for: .normal)
            self.messageLabel.textColor = UIColor.white
            view.backgroundColor = UIColor.black
        }
        else{
            self.messageLabel.text = "Black"
            self.messageButton.setTitle("On", for: .normal)
            self.messageLabel.textColor = UIColor.black
            view.backgroundColor = UIColor.white
        }
        lightOn = !lightOn
    }
}

