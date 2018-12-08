//
//  EasyLevelViewController.swift
//  Lakers Trivia
//
//  Created by Jesus Andres Bernal Lopez on 11/21/18.
//  Copyright © 2018 Jesus Andres Bernal Lopez. All rights reserved.
//

import UIKit

class EasyLevelViewController: UIViewController {
    
    var randomNumber = 0
    var totalNumberOfQuestions = 10
    var questions = EasyQuestions()
    var timer = Timer()
    var numberOfCorrectAnswers = 0
    
    let rightBarButton = UIBarButtonItem()
    
    private let questionLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.numberOfLines = 0
        l.font = UIFont(name: fonts.copperplate, size: 24)
        l.textColor = colors.purple
        l.textAlignment = .center
        return l
    }()
    
    private let answerOneButton: UIButton = {
        let b = UIButton()
        b.basicSetUp()
        b.addTarget(self, action: #selector(optionOne), for: .touchUpInside)
        return b
    }()
    
    private let answerTwoButton: UIButton = {
        let b = UIButton()
        b.basicSetUp()
        b.addTarget(self, action: #selector(optionTwo), for: .touchUpInside)
        return b
    }()
    
    private let answerThreeButton: UIButton = {
        let b = UIButton()
        b.basicSetUp()
        b.addTarget(self, action: #selector(optionThree), for: .touchUpInside)
        return b
    }()
    
    private let answerFourButton: UIButton = {
        let b = UIButton()
        b.basicSetUp()
        b.addTarget(self, action: #selector(optionFour), for: .touchUpInside)
        return b
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        let alert = UIAlertController(title: "How many questions would you like?", message: "", preferredStyle: .alert)
        let option1 = UIAlertAction(title: "10", style: .default) { (UIAlertAction) in
            self.totalNumberOfQuestions = 10
            self.setUp()
        }
        let option2 = UIAlertAction(title: "25", style: .default) { (UIAlertAction) in
            self.totalNumberOfQuestions = 25
            self.setUp()
        }
        let option3 = UIAlertAction(title: "50", style: .default) { (UIAlertAction) in
            self.totalNumberOfQuestions = 50
            self.setUp()
        }
        alert.addAction(option1)
        alert.addAction(option2)
        alert.addAction(option3)
        self.present(alert, animated: true, completion: nil)
    }
    
    func setUp(){
        navigationController?.navigationBar.tintColor = colors.purple
        navigationItem.title = "Easy"
        let leftButton = UIBarButtonItem(title: "Quit", style: .plain, target: self, action: #selector(onQuit))
        navigationItem.leftBarButtonItem = leftButton
        navigationController?.navigationBar.barTintColor = colors.gold
        rightBarButton.isEnabled = false
        navigationItem.rightBarButtonItem = rightBarButton
        setUpView()
        nextQuestion()
    }
    
    func nextQuestion(){
        rightBarButton.title = String(totalNumberOfQuestions)
        if totalNumberOfQuestions > 0{
            enableButtons()
            randomNumber = Int.random(in: 0..<questions.list.count)
            questionLabel.text = questions.list[randomNumber].question
            var options = [questions.list[randomNumber].correctAnswer, questions.list[randomNumber].optionTwo,
                           questions.list[randomNumber].optionThree, questions.list[randomNumber].optionFour]
            var rando = Int.random(in: 0..<options.count)
            answerOneButton.setTitle(options[rando].description, for: .normal)
            options.remove(at: rando)
            rando = Int.random(in: 0..<options.count)
            answerTwoButton.setTitle(options[rando].description, for: .normal)
            options.remove(at: rando)
            rando = Int.random(in: 0..<options.count)
            answerThreeButton.setTitle(options[rando].description, for: .normal)
            options.remove(at: rando)
            rando = Int.random(in: 0..<options.count)
            answerFourButton.setTitle(options[0].description, for: .normal)
        }else{
            let alert = UIAlertController(title: "Score", message: "Number Correct: \(numberOfCorrectAnswers)", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Go Back", style: .default, handler: { (UIAlertAction) in
                self.navigationController?.popViewController(animated: true)
            })
            
            alert.addAction(restartAction)
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                self.present(alert, animated: true, completion: nil)
            }
        }
        
    }

    @objc func optionOne(){
        startTimer()
        disableButtons()
        if questions.list[randomNumber].correctAnswer == answerOneButton.title(for: .normal){
            answerOneButton.backgroundColor = colors.purple
            numberOfCorrectAnswers += 1
        }else{
            answerOneButton.backgroundColor = .red
        }
        questions.list.remove(at: randomNumber)
    }
    
    @objc func optionTwo(){
        startTimer()
        disableButtons()
        if questions.list[randomNumber].correctAnswer == answerTwoButton.title(for: .normal){
            answerTwoButton.backgroundColor = colors.purple
            numberOfCorrectAnswers += 1
        }else{
            answerTwoButton.backgroundColor = .red
        }
        questions.list.remove(at: randomNumber)
    }
    
    @objc func optionThree(){
        startTimer()
        disableButtons()
        if questions.list[randomNumber].correctAnswer == answerThreeButton.title(for: .normal){
            answerThreeButton.backgroundColor = colors.purple
            numberOfCorrectAnswers += 1
        }else{
            answerThreeButton.backgroundColor = .red
        }
        questions.list.remove(at: randomNumber)
    }
    
    @objc func optionFour(){
        startTimer()
        disableButtons()
        if questions.list[randomNumber].correctAnswer == answerFourButton.title(for: .normal){
            answerFourButton.backgroundColor = colors.purple
            numberOfCorrectAnswers += 1
        }else{
            answerFourButton.backgroundColor = .red
        }
        questions.list.remove(at: randomNumber)
    }
    
    @objc func theNext(){
        totalNumberOfQuestions -= 1
        answerOneButton.backgroundColor = colors.gold
        answerTwoButton.backgroundColor = colors.gold
        answerThreeButton.backgroundColor = colors.gold
        answerFourButton.backgroundColor = colors.gold
        nextQuestion()
    }
    
    func disableButtons(){
        answerOneButton.isEnabled = false
        answerTwoButton.isEnabled = false
        answerThreeButton.isEnabled = false
        answerFourButton.isEnabled = false
    }
    
    func enableButtons(){
        answerOneButton.isEnabled = true
        answerTwoButton.isEnabled = true
        answerThreeButton.isEnabled = true
        answerFourButton.isEnabled = true
    }
    
    @objc func onQuit(){
        navigationController?.popViewController(animated: true)
    }
    
    func setUpView(){
        view.addSubview(questionLabel)
        questionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        questionLabel.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.9).isActive = true
        questionLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        questionLabel.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5).isActive = true
        
        view.addSubview(answerOneButton)
        answerOneButton.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 8).isActive = true
        answerOneButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.9).isActive = true
        answerOneButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        answerOneButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1).isActive = true
        
        view.addSubview(answerTwoButton)
        answerTwoButton.topAnchor.constraint(equalTo: answerOneButton.bottomAnchor, constant: 8).isActive = true
        answerTwoButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.9).isActive = true
        answerTwoButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        answerTwoButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1).isActive = true
        
        view.addSubview(answerThreeButton)
        answerThreeButton.topAnchor.constraint(equalTo: answerTwoButton.bottomAnchor, constant: 8).isActive = true
        answerThreeButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.9).isActive = true
        answerThreeButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        answerThreeButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1).isActive = true
        
        view.addSubview(answerFourButton)
        answerFourButton.topAnchor.constraint(equalTo: answerThreeButton.bottomAnchor, constant: 8).isActive = true
        answerFourButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.9).isActive = true
        answerFourButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        answerFourButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1).isActive = true
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(theNext), userInfo: nil, repeats: false)
    }
}
