//
//  WeaponsJedi.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

struct Bomb: Weapons {
    var distance: Int = 10
    var name: String = "Lazer Blaster"
    var damage: Int = 100
    var rateOfFire: Int = 2
    var ammunition: Int = 2
}

struct LazerBlaster: Weapons {
    var distance: Int = 10
    var name: String = "Lazer Blaster"
    var damage: Int = 10
    var rateOfFire: Int = 60
    var ammunition: Int = 2
}


//Добавить структуру FORCE: JEDIForce
struct Force: JEDIForce {
    func useTheForce() throws {
        print("good")
    }  
    func fire() throws {
        print("good")
    }
    
    var name: String = "Force"
    var damage: Int = 100
    var distance: Int
    var ammunition: Int = 1
}
