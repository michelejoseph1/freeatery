//
//  RootViewController.swift
//  EateryDupe
//
//  Created by Michele Joseph on 4/27/22.
//

import UIKit

class RootViewController: UIViewController {
    var findFoodButton: UIButton = {
        let button = UIButton()
        button.setTitle("Find Food", for: .normal)
       // button.addTarget(self, action: #selector(pushViewController1), for: .touchUpInside)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        return button
    }()
    var postFoodButton : UIButton = {
        let button = UIButton()
        button.setTitle("Post Food", for: .normal)
       //button.addTarget(self, action: #selector(pushViewController2), for: .touchUpInside)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        return button
    }()
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    title = "Welcome to Freeatery"
        [findFoodButton, postFoodButton].forEach { subView in subView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(subView)

}
        NSLayoutConstraint.activate([
            findFoodButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            findFoodButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            findFoodButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            
            postFoodButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            postFoodButton.topAnchor.constraint(equalTo: findFoodButton.bottomAnchor, constant: 10),
            postFoodButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
        ])
    }
}
