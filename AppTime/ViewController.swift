//
//  ViewController.swift
//  AppTime
//
//  Created by Phillip  Tracy on 8/31/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var riseLabel: UILabel!
    @IBOutlet weak var blueEarthIMG: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func firstButtonPressed(_ sender: Any) {
        let msg1 = "RISE"
        let msg2 = "The RISE"
        let msg3 = "RISE UP"
        if riseLabel.text == msg1 {
            riseLabel.text = msg2
            blueEarthIMG.image = UIImage(named: "rise_earth")
        } else if riseLabel.text == msg2 {
            riseLabel.text = msg3
            blueEarthIMG.image = UIImage(named: "blue_sun")
        } else {
            riseLabel.text = msg1
            blueEarthIMG.image = UIImage(named: "cartoon_sun")
        }
    }
}

