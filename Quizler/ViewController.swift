//
//  ViewController.swift
//  Quizler
//
//  Created by Uulgelsin Usubalieva on 25/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    var questions:[Questions] = [.one, .two, .three, .four, .five]
    var userAnswers: [String] = []
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        initialQuestion()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        restart()
    }
    
    @IBAction func answerTapped(_ sender: UIButton) {
            switch sender.tag{
            case 1:
                userAnswers.insert("No", at: counter)
            case 2:
                userAnswers.insert("Yes", at: counter)
            default:
                print("Hello mazafaka")
            }
        if questions.count - 1 == counter{
            navigationItem.title = "Quiz"
            let vc = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
            
            vc.result = ("\(checkCorrectAnswers())","\(counter + 1)")
            
            navigationController?.pushViewController(vc, animated: true)
            print(userAnswers)
        }else{
            counter += 1
            initialQuestion()
        }
    }
    func setup(){
        makeCornerView(view: noButton, cornerRadius: 15)
        makeCornerView(view: yesButton, cornerRadius: 15)
        makeCornerView(view: view1, cornerRadius: 5)
        makeCornerView(view: view2, cornerRadius: 5)
        makeCornerView(view: view3, cornerRadius: 5)
        makeCornerView(view: view4, cornerRadius: 5)
        makeCornerView(view: view5, cornerRadius: 5)
        makeCornerView(view: mainView, cornerRadius: 30)
    }
    func initialQuestion(){
        mainLabel.text = questions[counter].title
        navigationItem.title = "Question # \(counter + 1)"
        view1.backgroundColor = .blue
        changeViewBG()
    }
    func checkCorrectAnswers() -> String{
        var correctAnswers: Int = 0
        for i in 0..<questions.count{
            if userAnswers[i] == questions[i].answer {
                correctAnswers += 1
            }
        }
       return "\(correctAnswers)"
    }
    func changeViewBG(){
        switch counter{
        case 0:
            view1.backgroundColor = .blue
        case 1:
            view2.backgroundColor = .blue
        case 2:
            view3.backgroundColor = .blue
        case 3:
            view4.backgroundColor = .blue
        case 4:
            view5.backgroundColor = .blue
            
        default:
            print ("Hello")
        }
    }
    func makeCornerView (view:UIView, cornerRadius: CGFloat){
        view.layer.cornerRadius = cornerRadius
        view.layer.masksToBounds = true
    }
    func restart(){
    userAnswers = []
    counter = 0
        changeViewBG()
        view2.backgroundColor = .white
        view3.backgroundColor = .white
        view4.backgroundColor = .white
        view5.backgroundColor = .white
        mainLabel.text = questions[counter].title
}
}

