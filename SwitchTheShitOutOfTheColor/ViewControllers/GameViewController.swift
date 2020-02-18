//
//  GameViewController.swift
//  SwitchTheShitOutOfTheColor
//
//  Created by Group4 on 25/2/20.
//  Copyright © 2020 Group4. All rights reserved.
//
// Team:
// (301090878) Vishal Chanchlani
// (301089005) Vedvrat Singh Parihar
// (301094688) Nisha Tandel
// Assignment 2 : Arcade Game
// Version 1.0

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            
            let scene = MenuScene(size: view.bounds.size)
            scene.scaleMode = .aspectFill
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = true
           // view.showsFPS = true
           // view.showsNodeCount = true
        }
    }
}
