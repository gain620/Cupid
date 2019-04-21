//
//  ViewController.swift
//  Cupid
//
//  Created by Gain Chang on 21/04/2019.
//  Copyright © 2019 Gain Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let topStackView = TopNavigationStackView()
    let blueView = UIView()
    let buttonsStackView = HomeBottomControlsStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        blueView.backgroundColor = .blue

        setupLayout()
        
//        // enable auto layout
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }

    // MARK:- Fileprivate
    fileprivate func setupLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView,blueView,buttonsStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
    }
}

