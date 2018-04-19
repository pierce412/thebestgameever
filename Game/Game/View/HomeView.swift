//
//  HomeView.swift
//  Game
//
//  Created by Kevin Wood on 4/19/18.
//  Copyright © 2018 verticalendgame. All rights reserved.
//

import UIKit

class HomeView: UIView {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super .layoutSubviews()
        addSubview(homeLabel)
        addSubview(startButton)
        homeLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        //homeLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        homeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
        
        startButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        startButton.topAnchor.constraint(equalTo: topAnchor, constant: 400).isActive = true
    }
    let homeLabel: UILabel = {
        let label = UILabel()
        label.text = "Tic Tac Toe"
        label.font = UIFont.boldSystemFont(ofSize: 34)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let startButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(#imageLiteral(resourceName: "play"), for: .normal)
        return button
    }()
    var homeController: HomeViewController? {
        didSet {
            startButton.addTarget(homeController, action: #selector(homeController?.startButtonTapped), for: .touchUpInside)
        }
    }

}
