//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

struct Question {
    var title: String
    var answer: String
    
    init(title: String, answer: String) {
        self.title = title
        self.answer = answer
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        Question(title: "Four + Two is equal to Six.", answer: "True"),
        Question(title: "Five - Three is greater than One.", answer: "True"),
        Question(title: "Three + Eight is less than Ten.", answer: "False")
    ]
    
    // Initialize index
    var questionInd = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Update the label text when the app is loaded
        questionLabel.text = quiz[questionInd].title
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        // Check if the user's answer is correct
        let userAnswer = sender.currentTitle // True or False
        let actualAnswer = quiz[questionInd].answer
        
        if userAnswer == actualAnswer {
            print("Correct!")
        }
        else {
            print("Wrong!")
        }
        
        // If the user has reached the end of the quiz
        if questionInd == quiz.count - 1 {
            questionLabel.text = "You are done!"
        }
        // Otherwise move to the next question
        else {
            questionInd += 1
            questionLabel.text = quiz[questionInd].title
        }
        
    }
    
}

