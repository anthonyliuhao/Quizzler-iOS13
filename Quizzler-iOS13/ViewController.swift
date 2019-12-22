//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        "Four + Two is equal to Six.",
        "Five - Three is greater than One.",
        "Three + Eight is less than Ten."
    ]
    
    // Initialize index
    var questionInd = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Update the label text when the app is loaded
        questionLabel.text = quiz[questionInd]
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        // Check that the index is within bounds
        if questionInd < quiz.count - 1 {
            questionInd += 1
            questionLabel.text = quiz[questionInd]
        }
        
    }
    
}

