//
//  ViewController.swift
//  alien timer view
//
//  Created by D7703_17 on 2018. 4. 5..
//  Copyright © 2018년 김영석. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

      var counter = 1
      var myTimer = Timer()
      var direction = true
      
      @IBOutlet weak var Counter: UILabel!
      @IBOutlet weak var Alienimage: UIImageView!
      override func viewDidLoad() {
            super.viewDidLoad()
            Counter.text = String(counter)
            Alienimage.image = UIImage(named: "frame1.png")
            // Do any additional setup after loading the view, typically from a nib.
      }

      @IBAction func imagestart(_ sender: Any) {
            myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector:     #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
      }
      @IBAction func imageStop(_ sender: Any) {
            myTimer.invalidate()
      }
      @objc func doAnimation() {
            if counter == 5 {
                  direction = false
            } else if counter == 1{
                  direction = true
            }
            
            if direction == true {
                  counter = counter + 1
            } else if direction == false {
                  counter = counter - 1
            }
            Alienimage.image = UIImage(named: "frame\(counter).png")
            Counter.text = String(counter)
      }
}

