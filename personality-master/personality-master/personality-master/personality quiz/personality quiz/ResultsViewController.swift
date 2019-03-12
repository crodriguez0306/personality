//
//  ResultsViewController.swift
//  personality quiz
//
//  Created by Christopher B. Rodriguez on 3/1/19.
//  Copyright © 2019 Christopher B. Rodriguez. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()

        
    }
    var responses: [Answer]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultSegue" {
            let resultsViewController = segue.destination as!
            ResultsViewController
            ResultsViewController.responses = answersChosen 
    }
        func calculatePersonalityResult(){
        var frequencyOfAnswers: [AnimalType: Int] = [:]
            let responseTypes = responses.map{ $0.type }
            for response in responseTypes {
                frequencyOfAnswers[response] = (frequencyOfAnswers[response]
                    ?? 0) + 1
            
}
    
    

}
}
    let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
        { (pair1, pair2) -> Bool in
            return pair1.value > pair2.value
    })
    let mostCommonAnswer = frequentAnswersSorted.first!.key
}
