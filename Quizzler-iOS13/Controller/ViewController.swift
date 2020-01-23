//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var thirdButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle! //! force optional to definite type
        //since we are sure in this case that userAnswer can only be String
        let isUserRight = quizBrain.checkAnswer(userAnswer)
        /*since we have set external parameter as _ we don't need
        to specify the external parameter name like (para: userAnswer)*/
        if isUserRight {
            sender.backgroundColor = UIColor.green
            quizBrain.nextQuestion()
        }else{
            sender.backgroundColor = UIColor.red
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
    }
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        let choices = quizBrain.getChoices()
        progressBar.progress = quizBrain.getProgress()
        firstButton.backgroundColor = UIColor.clear
        firstButton.setTitle(choices[0], for: .normal)
        secondButton.backgroundColor = UIColor.clear
        secondButton.setTitle(choices[1], for: .normal)
        thirdButton.backgroundColor = UIColor.clear
        thirdButton.setTitle(choices[2], for: .normal)
        scoreLabel.text = "Score: \(quizBrain.getScore())"
    }
}

