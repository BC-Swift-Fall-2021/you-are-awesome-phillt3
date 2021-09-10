//
//  ViewController.swift
//  AppTime
//
//  Created by Phillip  Tracy on 8/31/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var riseLabel: UILabel!
    @IBOutlet weak var blueEarthIMG: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    var totalNumberOfImages = 5
    var totalNumberOfSounds = 4
    var audioPlayer: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error \(error.localizedDescription)")
            }
        } else {
            print("Could not read data file for sound")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0 ... upperLimit)
        } while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func firstButtonPressed(_ sender: Any) {
        let messages = ["RiseDigital", "risedigital.org",
                        "rise.com", "rise.net", "RISE",
                        "The Rise", "RISE UP"]
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count - 1)
        riseLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages - 1)
        blueEarthIMG.image = UIImage(named: "image\(imageNumber)")
        

        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds - 1)
        print("*** The new sound number is \(soundNumber)")
        if playSoundSwitch.isOn{
            playSound(name: "sound\(soundNumber)")
        }
    }
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if sender.isOn && audioPlayer != nil {
            audioPlayer.stop()
        }
    }
    
}

