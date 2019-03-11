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
   

}
    
    

}
}
