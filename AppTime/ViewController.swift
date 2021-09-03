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
    
    var messages = ["RiseDigital", "risedigital.org", "rise.com","rise.net", "RISE", "The Rise", "RISE UP"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func firstButtonPressed(_ sender: Any) {
//        let imageName = "image" + String(imageNumber)
        blueEarthIMG.image = UIImage(named: "image\(Int.random(in: 1...5))")
        riseLabel.text = messages[Int.random(in: 0...messages.count-1)]

        

        //        let msg1 = "RISE"
        //        let msg2 = "The RISE"
        //        let msg3 = "RISE UP"
        //        if riseLabel.text == msg1 {
        //            riseLabel.text = msg2
        //            blueEarthIMG.image = UIImage(named: "image0")
        //        } else if riseLabel.text == msg2 {
        //            riseLabel.text = msg3
        //            blueEarthIMG.image = UIImage(named: "image1")
        //        } else {
        //            riseLabel.text = msg1
        //            blueEarthIMG.image = UIImage(named: "image2")
        //        }
    }
}

