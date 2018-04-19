//
//  HomeViewController.swift
//  Game
//
//  Created by Kevin Wood on 4/19/18.
//  Copyright © 2018 verticalendgame. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeView = HomeView(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super .viewDidLoad()
        view.addSubview(homeView)
    }
}
