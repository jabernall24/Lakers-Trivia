//
//  SelectDifficultyViewController.swift
//  Lakers Trivia
//
//  Created by Jesus Andres Bernal Lopez on 11/21/18.
//  Copyright © 2018 Jesus Andres Bernal Lopez. All rights reserved.
//

import UIKit

class SelectDifficultyViewController: UIViewController {
    
    let easyButton: UIButton = {
        let b = UIButton()
        b.basicSetUp()
        b.setTitle("Easy", for: .normal)
        b.addTarget(self, action: #selector(onEasy), for: .touchUpInside)
        return b
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.tintColor = colors.purple
        navigationItem.title = "Difficulty"
        navigationController?.navigationBar.barTintColor = colors.gold
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : colors.purple,.font : UIFont(name: fonts.copperplate, size: 22.0)!]
        setUpView()
    }
    
    @objc func onEasy(){
        navigationController?.pushViewController(EasyLevelViewController(), animated: true)
    }
    
    func setUpView(){
        view.addSubview(easyButton)
        easyButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        easyButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        easyButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5).isActive = true
        easyButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1).isActive = true
    }
    
}

extension UIButton {
    func basicSetUp(){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitleColor(colors.purple, for: .normal)
        self.layer.borderColor = colors.black.cgColor
        self.layer.borderWidth = 5
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        self.backgroundColor = colors.gold
        self.titleLabel?.font = UIFont(name: fonts.copperplate, size: 24)
    }
}
