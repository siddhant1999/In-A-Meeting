//
//  ViewController.swift
//  In A Meeting
//
//  Created by jsidd on 2020-08-14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MainLabel: UILabel!
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        if MainLabel.textColor == UIColor.red {
            MainLabel.textColor = UIColor.white
            self.view.backgroundColor = UIColor.red

            print ("set color to white")
        }
        else {
            MainLabel.textColor = UIColor.red
            self.view.backgroundColor = UIColor.white
            print ("set color to red")
        }
        
    }


}

