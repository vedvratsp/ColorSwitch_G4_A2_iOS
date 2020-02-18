//
//  ActionShit.swift
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

public struct GameoverActionSheet {
    
    public static func show(restart: @escaping ()->Void, menuCB: @escaping ()->Void) -> UIAlertController {
        let actionSheet = UIAlertController(title: "Gameover", message: "Which one do you prefer?", preferredStyle: .actionSheet)
        
        let menu = UIAlertAction(title: "Go To The Menu", style: .destructive) { (action) in
            menuCB()
        }
        
        let yes = UIAlertAction(title: "Restart the game", style: .default) { (action) in
            restart()
        }
        
        actionSheet.addAction(yes)
        actionSheet.addAction(menu)
        
        return actionSheet
    }
}
