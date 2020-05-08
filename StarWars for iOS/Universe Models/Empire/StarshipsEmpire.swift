//
//  StarshipsEmpire.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

class DeathStar: StarshipImp {
        
    // MARK: - Constants
    
    private enum Constants {
        static let health = 1000
    }

    // MARK: - Lifecycle
    
    init(coordinate: Point) {
        super.init(name: "Death Star",
                   fraction: .empare,
                   coordinate: coordinate,
                   weapons: [SuperLazer(distance: 100)],
                   force: [JEDIForce].init())
        health = Constants.health
    }
    
    deinit {
        print("Люк, я твой отец!")
    }
}

//Добавляем крейсер "Звездный разрушитель"
class StarDestroyer: StarshipImp {
    private enum Constants {
        static let health = 100
    }
    init(coordinate: Point) {
        super.init(name: "Star Destroyer",
                   fraction: .empare,
                   coordinate: coordinate,
                   weapons: [Lazer(distance: 10), Bomb(distance: 10)],
                   force: [JEDIForce].init())
        health = Constants.health
    }
    deinit {
        print("\(name) уничтожен! Империя пала!")
    }
}
