//
//  ViewController.swift
//  IBBasics
//
//  Created by Zachary on 3/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var LightButton: UIButton!
    var lightOn = true

    @IBOutlet var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        myButton.tintColor = .red
        
        // Do any additional setup after loading the view.
    }

    fileprivate func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            LightButton.setTitle("Off", for: .normal)
        }
        else {
            view.backgroundColor = .black
            LightButton.setTitle("On", for: .normal)
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        print("button pressed")
        lightOn.toggle()
        updateUI()
    }

}

