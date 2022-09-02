//
//  ViewController.swift
//  IBBasics
//
//  Created by Zachary on 3/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true

    @IBOutlet var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton.tintColor = .red
        
        // Do any additional setup after loading the view.
    }

    fileprivate func extractedFunc() {
        view.backgroundColor = lightOn ? .white :.black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        print("button pressed")
        lightOn.toggle()
        extractedFunc()
    }

}

