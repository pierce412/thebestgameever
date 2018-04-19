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
    
    override func viewDidLoad() {
         super .viewDidLoad()
        view.addSubview(gameView)
        gameView.gameController = self
    }
    
    @objc func moveMade() {
      print("Button was tapped")
        checkForWin()
    }
    
    func checkForWin() {
        
        print("Checked For Win")
    }
}
