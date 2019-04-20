//
//  ViewController.swift
//  Cupid
//
//  Created by Gain Chang on 21/04/2019.
//  Copyright © 2019 Gain Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let subView = [UIColor.green, UIColor.yellow, UIColor.black].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        let topStackView = UIStackView(arrangedSubviews: subView)
        topStackView.distribution = .fillEqually
        topStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        let cyanView = UIView()
        cyanView.backgroundColor = .cyan
        cyanView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        var myStackView = [UIView]()
        myStackView.append(topStackView)
        myStackView.append(blueView)
        myStackView.append(cyanView)
        
        let stackView = UIStackView(arrangedSubviews: myStackView)
//        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        view.addSubview(stackView)
        stackView.frame = .init(x: 0, y: 0, width: 100, height: 100)
        stackView.fillSuperview()
        
//        // enable auto layout
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
    }


}

