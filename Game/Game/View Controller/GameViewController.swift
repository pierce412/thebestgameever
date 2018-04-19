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
    //instructionLabel, exitButton, replayButton
    
    var isXTurn: Bool = true
    
    override func viewDidLoad() {
        super .viewDidLoad()
        view.addSubview(gameView)
        gameView.gameController = self
        gameView.replayButton.isEnabled = false
        beginGame()
    }
    
    @objc func moveMade() {
        print("Button was tapped")
        if(isXTurn){
            //senders image set to 'X'
        }
        else {
            //senders image set to 'O'
        }
        checkForWin()
    }
    
    func checkForWin() {
        print("Checked For Win")
        //if win
        
        //horizontal wins
        if ((gameView.topLeftButton.imageView?.image == gameView.topCenterButton.imageView?.image && gameView.topCenterButton.imageView?.image == gameView.topRightButton.imageView?.image) ||
            (gameView.centerLeftButton.imageView?.image == gameView.centerButton.imageView?.image && gameView.centerButton.imageView?.image == gameView.centerRightButton.imageView?.image) ||
            (gameView.bottomLeftButton.imageView?.image == gameView.bottomCenterButton.imageView?.image && gameView.bottomCenterButton.imageView?.image == gameView.bottomRightButton.imageView?.image) ||
            //veritcal wins
            (gameView.topLeftButton.imageView?.image == gameView.centerLeftButton.imageView?.image && gameView.centerLeftButton.imageView?.image == gameView.bottomLeftButton.imageView?.image) ||
            (gameView.topCenterButton.imageView?.image == gameView.centerButton.imageView?.image && gameView.centerButton.imageView?.image == gameView.bottomCenterButton.imageView?.image) ||
            (gameView.topRightButton.imageView?.image == gameView.centerRightButton.imageView?.image && gameView.centerRightButton.imageView?.image == gameView.bottomRightButton.imageView?.image) ||
            //diagonal wins
            (gameView.topLeftButton.imageView?.image == gameView.centerButton.imageView?.image && gameView.centerButton.imageView?.image == gameView.bottomRightButton.imageView?.image) ||
            (gameView.topRightButton.imageView?.image == gameView.centerButton.imageView?.image && gameView.centerButton.imageView?.image == gameView.bottomLeftButton.imageView?.image)
            ){
            //make replay button visible
            gameView.replayButton.isEnabled = true
            if (isXTurn){
                gameView.instructionLabel.text = "X wins"
            }
            else {
                gameView.instructionLabel.text = "O wins"
            }
        }
        else {
            if(isXTurn){
                gameView.instructionLabel.text = "O's turn..."
            }
            else {
                gameView.instructionLabel.text = "X's turn..."
            }
        }
    }
    func beginGame() {
        gameView.instructionLabel.text = "X's turn..."
        isXTurn = true
        
    }
}
