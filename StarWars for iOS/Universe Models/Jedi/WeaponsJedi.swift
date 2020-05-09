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
    var name: String = "Bomb"
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
//делаем новое оружее Силу ЭКСПЕРИМЕНТ
struct NewForce: Weapons {
    var name: String = "Force"
    var damage: Int = 50
    var distance: Int = 10
    var ammunition: Int = 5
}

//Добавил структуру FORCE: JEDIForce
struct Force: JEDIForce {
    var name: String = "Force"
    var damage: Int = 1000
    var distance: Int = 10
    var rateOfFire: Int = 1
    var ammunition: Int = 1
}
