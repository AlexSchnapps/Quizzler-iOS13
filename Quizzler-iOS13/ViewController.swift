//
//  ViewController.swift
//  Quizzler-iOS13

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["A slug's blood is green.", "True"],
        ["Approximately one quarter of human bones are in the feet.", "True"],
        ["The total surface area of two human lungs is approximately 70 square metres.", "True"],
        ["In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", "True"],
        ["In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", "False"],
        ["It is illegal to pee in the Ocean in Portugal.", "True"],
        ["You can lead a cow down stairs but not up stairs.", "False"],
        ["Google was originally called 'Backrub'.", "True"],
        ["Buzz Aldrin's mother's maiden name was 'Moon'.", "True"],
        ["The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", "False"],
        ["No piece of square dry paper can be folded in half more than 7 times.", "False"],
        ["Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", "True"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    //MARK: - IBActions
    @IBAction func answerButtomPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            questionLabel.text = "Right!"
        } else {
            questionLabel.text = "Wrong!"
        }
        
        if questionNumber < (quiz.count) - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

