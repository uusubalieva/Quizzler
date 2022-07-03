//
//  ResultViewController.swift
//  Quizler
//
//  Created by Uulgelsin Usubalieva on 30/6/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var repeatButton: UIButton!
    
    var result: (correctAnswers: String, totalQuestions: String) = ("", "")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.backItem?.hidesBackButton = true
        navigationItem.backButtonTitle = "Quiz"
        navigationItem.title = "Result"
        navigationController?.navigationItem.leftBarButtonItem?.title = "Hello"
        navigationController?.navigationItem.title = "Result"
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        setup()
        getData()
    }
    func setup(){
        adviceLabel.layer.cornerRadius = adviceLabel.frame.height / 2
        adviceLabel.layer.masksToBounds = true

        repeatButton.layer.cornerRadius = 15
        repeatButton.layer.masksToBounds = true
    }
    func getData(){
        resultLabel.text = "\(result.correctAnswers) / \(result.totalQuestions)"
          
        if let number = Int(result.correctAnswers), let questions = Int(result.totalQuestions){
            if number == 0{
                adviceLabel.text = "Mmm. Try one more time!"
            }else if number > 0 && number < questions{
                adviceLabel.text = "You can do better!"
            }else if number == questions{
                adviceLabel.text = "Not bad."
//            }else if number == questions{
//                adviceLabel.text == "Good!"
//            } else if number == questions{
//                adviceLabel.text == "You are genius"
    }
    }
    }
    
    @IBAction func repeatButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
  
}

