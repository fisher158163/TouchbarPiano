//
//  ViewController.swift
//  PianoThing
//
//  Created by Felix Luciano on 1/1/20.
//  Copyright © 2020 Felix Luciano. All rights reserved.
//

import Cocoa
import AVFoundation

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    var x = 2;
    var sound: AVAudioPlayer?
    
    @IBAction func Play(_ sender: Any) {
        x += 1;
        blah(x : x);
    }
    func blah(x : Int){
        print(x);
    }
    
    @IBAction func PlayT(_ sender: Any) {
        let path = Bundle.main.path(forResource: "/Users/Felix/Music/Bouncepad.wav", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            sound = try AVAudioPlayer(contentsOf: url)
            sound?.play()
        } catch {
            // couldn't load file :(
        }

    }
    
    @IBAction func PlayT2(_ sender: Any) {
        x -= 2;
        blah(x : x);
    }
}

