//
//  ViewController.swift
//  GuessTheNumberGame
//
//  Created by Nafisur Ahmed on 09/05/17.
//  Copyright © 2017 Nafisur Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextArea: UITextField!
    @IBOutlet weak var LabelArea: UILabel!
    
    private var guessNumber = 0
    private var countGuesses = 0
    private var guessAgain = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TextArea.layer.cornerRadius = 15.0
        guessNumber = Int(arc4random_uniform(100))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func GuessTapped(_ sender: Any) {
        
        if guessAgain {
            
            countGuesses = 0
            TextArea.text = ""
            guessNumber = Int(arc4random_uniform(100))
            guessAgain = false
        }
        
        if Int(TextArea.text!) != nil {
            
            let num = Int(TextArea.text!)
            countGuesses += 1
            if num == guessNumber {
                
                LabelArea.text = "Congratulations!! It took you \(countGuesses) guesses to guess the number. Play again?"
                guessAgain = true
            }
            else if num! < guessNumber
            {
            LabelArea.text = "Number is less than Guess Number"
        }
            else if num! > guessNumber
            {
                LabelArea.text = "Number is greater than Guess Number"
            }
        else {
            
            LabelArea.text = "Please enter a number in the textfield."
        }
    }
    
    
}
}
