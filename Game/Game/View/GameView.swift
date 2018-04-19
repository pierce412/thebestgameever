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
        imageView.backgroundColor = .blue
        imageView.isUserInteractionEnabled = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let topLeftButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let topCenterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let topRightButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let centerLeftButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let centerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let centerRightButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let bottomLeftButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let bottomCenterButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let bottomRightButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let instructionLabel: UILabel = {
        let label = UILabel()
        label.text = "X Starts"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//
//    let replayButton: UIButton = {
//        let button = UIButton()
//        button.setTitle("Replay", for: .normal)
//        button.setTitleColor(.blue, for: .normal)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
//
//    let exitButton: UIButton = {
//        let button = UIButton()
//        button.setTitle("Exit", for: .normal)
//        button.setTitleColor(.blue, for: .normal)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
    
    var gameController: GameViewController? {
        didSet {
            topLeftButton.addTarget(gameController, action: #selector(gameController?.moveMade(_:)), for: .touchUpInside)
            topCenterButton.addTarget(gameController, action: #selector(gameController?.moveMade(_:)), for: .touchUpInside)
            topRightButton.addTarget(gameController, action: #selector(gameController?.moveMade(_:)), for: .touchUpInside)
            centerLeftButton.addTarget(gameController, action: #selector(gameController?.moveMade(_:)), for: .touchUpInside)
            centerButton.addTarget(gameController, action: #selector(gameController?.moveMade(_:)), for: .touchUpInside)
            centerRightButton.addTarget(gameController, action: #selector(gameController?.moveMade(_:)), for: .touchUpInside)
            bottomLeftButton.addTarget(gameController, action: #selector(gameController?.moveMade(_:)), for: .touchUpInside)
            bottomCenterButton.addTarget(gameController, action: #selector(gameController?.moveMade(_:)), for: .touchUpInside)
            bottomRightButton.addTarget(gameController, action: #selector(gameController?.moveMade(_:)), for: .touchUpInside)
//            exitButton.addTarget(gameController, action: #selector(gameController?.exitButtonTapped), for: .touchUpInside)
//            replayButton.addTarget(gameController, action: #selector(gameController?.replayButtonTapped), for: .touchUpInside)
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
        boardImageView.addSubview(topCenterButton)
        boardImageView.addSubview(topRightButton)
        boardImageView.addSubview(centerLeftButton)
        boardImageView.addSubview(centerButton)
        boardImageView.addSubview(centerRightButton)
        boardImageView.addSubview(bottomLeftButton)
        boardImageView.addSubview(bottomCenterButton)
        boardImageView.addSubview(bottomRightButton)
//        addSubview(exitButton)
//        addSubview(replayButton)
//        
        instructionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        instructionLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        
        boardImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        boardImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        boardImageView.heightAnchor.constraint(equalTo: heightAnchor, constant: -250).isActive = true
        boardImageView.widthAnchor.constraint(equalTo: widthAnchor, constant: -20).isActive = true
        
        topLeftButton.leftAnchor.constraint(equalTo: boardImageView.leftAnchor).isActive = true
        topLeftButton.topAnchor.constraint(equalTo: boardImageView.topAnchor).isActive = true
        topLeftButton.widthAnchor.constraint(equalTo: boardImageView.widthAnchor, multiplier: 0.27).isActive = true
        topLeftButton.heightAnchor.constraint(equalTo: boardImageView.heightAnchor, multiplier: 0.31).isActive = true
        
        topCenterButton.centerXAnchor.constraint(equalTo: boardImageView.centerXAnchor).isActive = true
        topCenterButton.topAnchor.constraint(equalTo: boardImageView.topAnchor).isActive = true
        topCenterButton.widthAnchor.constraint(equalTo: boardImageView.widthAnchor, multiplier: 0.38).isActive = true
        topCenterButton.heightAnchor.constraint(equalTo: boardImageView.heightAnchor, multiplier: 0.32).isActive = true
        
        topRightButton.rightAnchor.constraint(equalTo: boardImageView.rightAnchor).isActive = true
        topRightButton.topAnchor.constraint(equalTo: boardImageView.topAnchor).isActive = true
        topRightButton.widthAnchor.constraint(equalTo: boardImageView.widthAnchor, multiplier: 0.26).isActive = true
        topRightButton.heightAnchor.constraint(equalTo: boardImageView.heightAnchor, multiplier: 0.31).isActive = true
        
        centerLeftButton.centerYAnchor.constraint(equalTo: boardImageView.centerYAnchor).isActive = true
        centerLeftButton.leftAnchor.constraint(equalTo: boardImageView.leftAnchor).isActive = true
        centerLeftButton.widthAnchor.constraint(equalTo: boardImageView.widthAnchor, multiplier: 0.27).isActive = true
        centerLeftButton.heightAnchor.constraint(equalTo: boardImageView.heightAnchor, multiplier: 0.31).isActive = true
        
        centerButton.centerXAnchor.constraint(equalTo: boardImageView.centerXAnchor).isActive = true
        centerButton.centerYAnchor.constraint(equalTo: boardImageView.centerYAnchor).isActive = true
        centerButton.widthAnchor.constraint(equalTo: boardImageView.widthAnchor, multiplier: 0.38).isActive = true
        centerButton.heightAnchor.constraint(equalTo: boardImageView.heightAnchor, multiplier: 0.32).isActive = true
        
        centerRightButton.rightAnchor.constraint(equalTo: boardImageView.rightAnchor).isActive = true
        centerRightButton.centerYAnchor.constraint(equalTo: boardImageView.centerYAnchor).isActive = true
        centerRightButton.widthAnchor.constraint(equalTo: boardImageView.widthAnchor, multiplier: 0.26).isActive = true
        centerRightButton.heightAnchor.constraint(equalTo: boardImageView.heightAnchor, multiplier: 0.31).isActive = true
        
        bottomLeftButton.leftAnchor.constraint(equalTo: boardImageView.leftAnchor).isActive = true
        bottomLeftButton.bottomAnchor.constraint(equalTo: boardImageView.bottomAnchor).isActive = true
        bottomLeftButton.widthAnchor.constraint(equalTo: boardImageView.widthAnchor, multiplier: 0.27).isActive = true
        bottomLeftButton.heightAnchor.constraint(equalTo: boardImageView.heightAnchor, multiplier: 0.31).isActive = true
        
        bottomCenterButton.centerXAnchor.constraint(equalTo: boardImageView.centerXAnchor).isActive = true
        bottomCenterButton.bottomAnchor.constraint(equalTo: boardImageView.bottomAnchor).isActive = true
        bottomCenterButton.widthAnchor.constraint(equalTo: boardImageView.widthAnchor, multiplier: 0.38).isActive = true
        bottomCenterButton.heightAnchor.constraint(equalTo: boardImageView.heightAnchor, multiplier: 0.32).isActive = true
        
        bottomRightButton.rightAnchor.constraint(equalTo: boardImageView.rightAnchor).isActive = true
        bottomRightButton.bottomAnchor.constraint(equalTo: boardImageView.bottomAnchor).isActive = true
        bottomRightButton.widthAnchor.constraint(equalTo: boardImageView.widthAnchor, multiplier: 0.26).isActive = true
        bottomRightButton.heightAnchor.constraint(equalTo: boardImageView.heightAnchor, multiplier: 0.31).isActive = true
        
//        exitButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        exitButton.topAnchor.constraint(equalTo: boardImageView.bottomAnchor, constant: 20).isActive = true
//
//        replayButton.topAnchor.constraint(equalTo: exitButton.bottomAnchor, constant: 10).isActive = true
//        replayButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}
