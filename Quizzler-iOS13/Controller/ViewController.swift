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
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Update the label text when the app is loaded
        updateUI()
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        // Check if the user's answer is correct
        let userAnswer = sender.currentTitle! // True or False
        let answerIsCorrect : Bool = quizBrain.checkAnswer(userAnswer)
        
        // Provide feedback: correct - green; wrong - red
        if answerIsCorrect {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        
        // Move to the next question
        quizBrain.advanceQuestion()
        
        // Wait 0.2 seconds and then update the UI
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }

    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionTitle()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
    
}

