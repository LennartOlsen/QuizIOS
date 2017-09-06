//
//  ViewController.swift
//  Quiz
//
//  Created by Lennart Olsen on 06/09/2017.
//  Copyright © 2017 Lennart Olsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpeiler",
        "Grapes and other leftovers"
    ]
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        questionLabel.text = questions[currentQuestionIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAnswer(_ sender : UIButton){
        answerLabel.text = answers[currentQuestionIndex]
    }
    
    @IBAction func showNextQuestion(_ sender : UIButton){
        currentQuestionIndex += 1
        
        if(currentQuestionIndex == questions.count){
            currentQuestionIndex = 0
        }
        
        let question : String = questions[currentQuestionIndex]
        
        questionLabel.text = question
        
        answerLabel.text = "???"
    }

}

