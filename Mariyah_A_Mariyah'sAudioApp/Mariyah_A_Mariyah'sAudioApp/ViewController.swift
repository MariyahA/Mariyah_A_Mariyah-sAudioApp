//
//  ViewController.swift
//  Mariyah_A_Mariyah'sAudioApp
//
//  Created by Student on 8/10/21.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sound = Bundle.main.path(forResource: "03. Mii Channel", ofType: "mp3")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }catch{
            print(error)
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Pause(_ sender: Any) {
        audioPlayer.pause()
    }
    
    @IBAction func Play(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func Stop(_ sender: Any) {
        audioPlayer.stop()
    }
   
    @IBAction func Slider(_ sender: UISlider) {
        audioPlayer.volume = sender.value
    }
    


}

