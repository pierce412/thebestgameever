//
//  GameViewController.swift
//  Game
//
//  Created by Kevin Wood on 4/19/18.
//  Copyright © 2018 verticalendgame. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    let gameView = GameView(frame: UIScreen.main.bounds)
    
    var isXTurn: Bool = true
    
    override func viewDidLoad() {
        super .viewDidLoad()
        view.addSubview(gameView)
        gameView.gameController = self
        gameView.replayButton.isHidden = true
    }
    
    @objc func moveMade(_ sender: UIButton) {
        if(isXTurn){
            sender.setImage(#imageLiteral(resourceName: "X"), for: .normal)
            isXTurn = false
        } else {
            sender.setImage(#imageLiteral(resourceName: "O"), for: .normal)
            isXTurn = true
        }
        gameView.replayButton.isHidden = false
        checkForWin()
    }
    
    func checkForWin() {
        //Horizontal Wins for O
        if gameView.topLeftButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.topCenterButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.topRightButton.imageView?.image == #imageLiteral(resourceName: "O") ||
            gameView.centerLeftButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.centerButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.centerRightButton.imageView?.image == #imageLiteral(resourceName: "O") ||
            gameView.bottomLeftButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.bottomCenterButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.bottomRightButton.imageView?.image == #imageLiteral(resourceName: "O") ||
            //Vertical Wins for O
            gameView.bottomLeftButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.centerLeftButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.topLeftButton.imageView?.image == #imageLiteral(resourceName: "O") ||
            gameView.bottomCenterButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.centerButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.topCenterButton.imageView?.image == #imageLiteral(resourceName: "O") ||
            gameView.bottomRightButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.centerRightButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.topRightButton.imageView?.image == #imageLiteral(resourceName: "O") ||
            //Diagonal Wins for O
            gameView.bottomRightButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.centerButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.topLeftButton.imageView?.image == #imageLiteral(resourceName: "O") ||
            gameView.topRightButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.centerButton.imageView?.image == #imageLiteral(resourceName: "O") && gameView.bottomLeftButton.imageView?.image == #imageLiteral(resourceName: "O") {
            
            gameView.instructionLabel.text = "O's Win"
            gameView.boardImageView.isUserInteractionEnabled = false
            
        }
            //Horizontal Wins for X
        else if gameView.topLeftButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.topCenterButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.topRightButton.imageView?.image == #imageLiteral(resourceName: "X") ||
            gameView.centerLeftButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.centerButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.centerRightButton.imageView?.image == #imageLiteral(resourceName: "X") ||
            gameView.bottomLeftButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.bottomCenterButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.bottomRightButton.imageView?.image == #imageLiteral(resourceName: "X") ||
            //Vertical Wins for X
            gameView.bottomLeftButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.centerLeftButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.topLeftButton.imageView?.image == #imageLiteral(resourceName: "X") ||
            gameView.bottomCenterButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.centerButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.topCenterButton.imageView?.image == #imageLiteral(resourceName: "X") ||
            gameView.bottomRightButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.centerRightButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.topRightButton.imageView?.image == #imageLiteral(resourceName: "X") ||
            //Diagonal Wins for X
            gameView.bottomRightButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.centerButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.topLeftButton.imageView?.image == #imageLiteral(resourceName: "X") ||
            gameView.topRightButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.centerButton.imageView?.image == #imageLiteral(resourceName: "X") && gameView.bottomLeftButton.imageView?.image == #imageLiteral(resourceName: "X") {
            
            gameView.instructionLabel.text = "X's Win"
            gameView.boardImageView.isUserInteractionEnabled = false
        } else if isXTurn {
            
            gameView.instructionLabel.text = "X's Turn"
            
        } else {
            
            gameView.instructionLabel.text = "O's Turn"
        }
    }
    
    @objc func replayButtonTapped() {
        gameView.instructionLabel.text = "X's Starts"
        gameView.topLeftButton.setImage(UIImage(), for: .normal)
        gameView.topCenterButton.setImage(UIImage(), for: .normal)
        gameView.topRightButton.setImage(UIImage(), for: .normal)
        gameView.centerLeftButton.setImage(UIImage(), for: .normal)
        gameView.centerButton.setImage(UIImage(), for: .normal)
        gameView.centerRightButton.setImage(UIImage(), for: .normal)
        gameView.bottomLeftButton.setImage(UIImage(), for: .normal)
        gameView.bottomCenterButton.setImage(UIImage(), for: .normal)
        gameView.bottomRightButton.setImage(UIImage(), for: .normal)
        gameView.replayButton.isHidden = true
        isXTurn = true
        gameView.boardImageView.isUserInteractionEnabled = true
    }
    
    @objc func exitButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
}
