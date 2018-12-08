//
//  HomeViewController.swift
//  Lakers Trivia
//
//  Created by Jesus Andres Bernal Lopez on 11/21/18.
//  Copyright © 2018 Jesus Andres Bernal Lopez. All rights reserved.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController {
        
    private let nameLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.text = "Lakers\nTrivia"
        l.textColor = colors.purple
        l.backgroundColor = .clear
        l.textAlignment = .center
        l.font = UIFont(name: fonts.copperplate, size: 81)
        l.numberOfLines = 2
        return l
    }()
    
    private let startButton: UIButton = {
        let b = UIButton()
        b.basicSetUp()
        b.setTitle("Start", for: .normal)
        b.addTarget(self, action: #selector(onQuiz), for: .touchUpInside)
        return b
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = true
    }
    
    @objc func onQuiz(){
        navigationController?.pushViewController(SelectDifficultyViewController(), animated: true)
    }
    
    func setUpView(){
        view.addSubview(nameLabel)
        nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        nameLabel.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.3).isActive = true
        
        view.addSubview(startButton)
        startButton.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8).isActive = true
        startButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5).isActive = true
        startButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        startButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1).isActive = true
    }
}

enum fonts {
    static let copperplate = "Copperplate"
}

enum colors {
    static let purple = #colorLiteral(red: 0.3333333333, green: 0.1450980392, blue: 0.5137254902, alpha: 1)
    static let gold = #colorLiteral(red: 0.9921568627, green: 0.7254901961, blue: 0.1529411765, alpha: 1)
    static let black = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
}
