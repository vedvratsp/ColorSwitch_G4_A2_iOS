//
//  Settings.swift
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

enum PlayColors {
    static let colors = [
        UIColor(red: 231/255, green: 76/255, blue: 60/255, alpha: 1.0),
        UIColor(red: 241/255, green: 196/255, blue: 15/255, alpha: 1.0),
        UIColor(red: 46/255, green: 204/255, blue: 113/255, alpha: 1.0),
        UIColor(red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0)
    ]
}

enum SwitchState: Int {
    case red, yellow, green, blue
}

enum PhysicsCategories {
    
    static let none: UInt32 = 0
    static let ballCategory: UInt32 = 0x1                           // 01
    static let switchCategory: UInt32 = 0x1 << 1 // bitwise shift   // 10
}

enum ZPositions {
    static let label: CGFloat = 1
    static let ball: CGFloat = 2
    static let colorSwitch: CGFloat = 3
}

public struct UserDefaultsManager {
    
    public static let shared = UserDefaultsManager()
    public let value = UserDefaults.standard
    private init() {}
}

public enum UserDefaultsKeys:String {
    case highscore
    case recentScroe
}

