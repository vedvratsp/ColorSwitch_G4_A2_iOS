//
//  SKSpriteNode.swift
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

import SpriteKit

extension SKSpriteNode {
    
    func aspectFillToSize(fillSize: CGSize) {
        
        if texture != nil {
            self.size = texture!.size()
            
            let verticalRatio = fillSize.height / self.texture!.size().height
            let horizontalRatio = fillSize.width /  self.texture!.size().width
            
            let scaleRatio = horizontalRatio > verticalRatio ? horizontalRatio : verticalRatio
            
            self.setScale(scaleRatio)
        }
    }
}
