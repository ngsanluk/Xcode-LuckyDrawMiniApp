//
//  ViewController.swift
//  Lucky Draw
//
//  Created by Sunny NG on 21/2/2017.
//  Copyright © 2017 Sunny NG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // out connecting to lucky number label which's initial value is "?"
    @IBOutlet weak var label: UILabel!
   
    
    
    // Action when user tap draw next number
    @IBAction func drawNextNumber(_ sender: UIButton) {
        
        // Use arc4random_uniform c function to generate a random number and convert it to SWIFT Int type
        let nextNumber = Int(arc4random_uniform(100)+1)
        
        // Update the label display to the generated random number
        label.text = "\(nextNumber)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

