//
//  GameView.swift
//  Game
//
//  Created by Kevin Wood on 4/19/18.
//  Copyright © 2018 verticalendgame. All rights reserved.
//

import UIKit

class GameView: UIView {
    
    //MARK: - Properties
    
    let boardImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = #imageLiteral(resourceName: "Board")
        imageView.isUserInteractionEnabled = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let topLeftButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let topCenterButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let topRightButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .yellow
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let centerLeftButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let centerButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let centerRightButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let bottomLeftButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let bottomCenterButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let bottomRightButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .lightGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let instructionLabel: UILabel = {
        let label = UILabel()
        label.text = "X Starts"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let replayButton: UIButton = {
        let button = UIButton()
        button.setTitle("Replay", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let exitButton: UIButton = {
        let button = UIButton()
        button.setTitle("Exit", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var gameController: GameViewController? {
        didSet {
            topLeftButton.addTarget(gameController, action: #selector(gameController?.moveMade), for: .touchUpInside)
        }
    }
    
    //MARK: - Initilization
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super .layoutSubviews()
        addSubview(instructionLabel)
        addSubview(boardImageView)
        boardImageView.addSubview(topLeftButton)
        
        instructionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        instructionLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        
        boardImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        boardImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        boardImageView.heightAnchor.constraint(equalTo: heightAnchor, constant: -200).isActive = true
        boardImageView.widthAnchor.constraint(equalTo: widthAnchor, constant: -20).isActive = true
        
        topLeftButton.leftAnchor.constraint(equalTo: boardImageView.leftAnchor).isActive = true
        topLeftButton.topAnchor.constraint(equalTo: boardImageView.topAnchor).isActive = true
        topLeftButton.widthAnchor.constraint(equalToConstant: 97).isActive = true
        topLeftButton.heightAnchor.constraint(equalToConstant: 152.5).isActive = true
        
    }
}
