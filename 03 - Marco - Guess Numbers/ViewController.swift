//
//  ViewController.swift
//  03 - Marco - Guess Numbers
//
//  Created by Marco Linhares on 6/5/15.
//  Copyright (c) 2015 Marco Linhares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textAnswer: UITextField!

    @IBOutlet weak var labelAnswer: UILabel!
    
    @IBAction func buttonGuess(sender: AnyObject) {
        var random = arc4random() % 6
        
        let number = textAnswer.text?.toInt()
        
        if number == nil {
            labelAnswer.text = "Please enter a number."
        } else if Int (random) == number {
            labelAnswer.text = "Right!!!!"
        } else if number > 5 || number < 0 {
            labelAnswer.text = "Please type a number between 0 and 5"
        } else if Int (random) == 1 || Int (random) == 0 {
            labelAnswer.text = "Wrong. I was holding \(random) finger"
        } else {
            labelAnswer.text = "Wrong. I was holding \(random) fingers"
        }
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

