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
    
    var imageNumber = -1
    var messageNumber = -1
    var totalNumberOfImages = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func firstButtonPressed(_ sender: Any) {
        let messages = ["RiseDigital", "risedigital.org",
                        "rise.com", "rise.net", "RISE",
                        "The Rise", "RISE UP"]
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        riseLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0 ... totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        blueEarthIMG.image = UIImage(named: "image\(imageNumber)")
        
    }
}

