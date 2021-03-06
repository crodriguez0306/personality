//
//  QuestionViewController.swift
//  personality quiz
//
//  Created by Christopher B. Rodriguez on 3/1/19.
//  Copyright © 2019 Christopher B. Rodriguez. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UIStackView!
    @IBOutlet weak var multiLabel2: UIStackView!
    @IBOutlet weak var multiLabel3: UIStackView!
    @IBOutlet weak var multiLabel4: UIStackView!
    
    @IBOutlet weak var rangesStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 updateUI()
       
    }
    func updateUI(){
    singleStackView.isHidden = true
    multipleStackView.isHidden = true
    rangesStackView.isHidden = true
    
    navigationItem.title = "Question #\(questionIndex+1)"
    let currentQuestion = questions[questionIndex]
    
        switch currentQuestion.type {
            case single:
                singleStackView.isHidden = false
            case multiple:
    multipleStackView.isHidden = false
            case ranged:
                rangesStackView.isHIdden = false
    
    }
    
    var questions: [Question] = [
        Question (text: "Which food do you like the most?", type:.single,
                 answers: [
                    Answer (text: "Steak", type: .dog),
                    Answer (text: "Fish", type: .cat),
                    Answer (text: "Carrots",type: .rabbit),
                    Answer (text: "Corn", type: .turtle)
            ]),
        Question(text: "Which activities do you enjoy?", type: .multiple,
                 answers : [
                    Answer (text: "Swimming", type: .turtle),
                    Answer (text: "Sleeping", type: .cat),
                    Answer (text: "Cuddling", type: .rabbit),
                    Answer (text: "Eating", type: .dog)]),
        
        Question(text: "How much do you enjoy car rides?", type: .ranged,
                 answers: [
                    Answer (text: "I dislike them", type: .cat),
                   Answer (text: "I get a little nervous",type: .rabbit),
                    Answer (text: "I barely notice them",type: .turtle),
                    Answer (text: "I love them", type: .dog),
            ])
    ]

    var questionIndex = 0
   
    
}
