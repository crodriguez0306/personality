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
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers 
        switch sender {
        case singleButton1:
            answersChosen.append(currentAnswers[0])
        case singleButton2:
            answersChosen.append(currentAnswers[1])
        case singleButton3:
            answersChosen.append(currentAnswers[2])
        case singleButton4:
            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        nextQuestion()
    }
    
    
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UIStackView!
    @IBOutlet weak var multiLabel2: UIStackView!
    @IBOutlet weak var multiLabel3: UIStackView!
    @IBOutlet weak var multiLabel4: UIStackView!
    @IBOutlet weak var multiSwitch1: UISwitch!
    @IBOutlet weak var multiSwitch2: UISwitch!
    @IBOutlet weak var multiSwitch3: UISwitch!
    @IBOutlet weak var multiSwitch4: UISwitch!
    @IBAction func multipleAnswerButtonPressed() {
         let currentAnswers = questions[questionIndex].answers
        if multiSwitch1.isOn {
            answersChosen.append(currentAnswers[0])
        }
        if multiSwitch2.isOn {
            answersChosen.append(currentAnswers[1])
        }
        if multiSwitch3.isOn {
            answersChosen.append(currentAnswers[2])
        }
        if multiSwitch4.isOn {
            answersChosen.append(currentAnswers[3])
        }
        nextQuestion()
        
    }
    
    @IBOutlet weak var rangesStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    @IBOutlet weak var rangedSlider: UISlider!
    @IBAction func rangesAnswerButtonPressed(_ sender: Any) {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedSlider.value *
            Float(currentAnswers.count - 1)))
        answersChosen.append(currentAnswers[index])
        nextQuestion()
    }
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 updateUI()
       
    }
    func updateUI(){
        func updateSingleStack(using answers: [Answer]) {
            singleStackView.isHidden = false
            singleButton1.setTitle(answers[0].text, for: .normal)
            singleButton2.setTitle(answers[1].text, for: .normal)
            singleButton3.setTitle(answers[2].text, for: .normal)
            singleButton4.setTitle(answers[3].text, for: .normal)
        }
        func updateMultipleStack(using answers: [Answer]) {
            multipleStackView.isHidden = false
            multiLabel1.text = answers[0].text
            multiLabel2.text = answers[1].text
            multiLabel3.text = answers[2].text
            multiLabel4.text = answers[3].text
        }
    
        func updateRangedStack(using answers: [Answer]) {
            rangesStackView.isHidden = false
            rangedLabel1.text = answers.first?.text
            rangedLabel2.text = answers.last?.text
        }
       
    
    let currentQuestion = questions[questionIndex]
    let totalProgress = Float(questionIndex) /
        Float(questions.count)
    
         navigationItem.title = "Question #\(questionIndex+1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated:
            true)
    
        switch currentQuestion.type {
        case single:
            updateSingleStack(using: currentAnswers)
            
        case multiple:
            updateMultipleStack(using: currentAnswers)
            
        case ranged:
           updateRangedStack(using: currentAnswers!)
            
    
    }
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

