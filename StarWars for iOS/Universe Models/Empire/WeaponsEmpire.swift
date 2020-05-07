//
//  StartshipsWeapons.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

struct SuperLazer: Weapons {
    var distance: Int = 100
    var name: String = "Ultimate super lazer"
    var damage: Int = 10000
    var rateOfFire: Int = 1
    var ammunition: Int = 2
}

struct Lazer: Weapons {
    var distance: Int = 10
    var name: String = "Lazer"
    var damage: Int = 10
    var rateOfFire: Int = 1
    var ammunition: Int = 1
}
