//
//  Weapons.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

protocol Armed {
    var weapons: [Weapons] { get }
    var force: [JEDIForce] { get }
}

protocol Shooting: Armed {
    func fire(to coordinate: Point) throws
    func useTheForce(to coordinate: Point) throws
}

enum WeaponsError: Error {
    case isEmpty
}

protocol Weapons {
    var name: String { get }
    var damage: Int { get }
    // Раскомментировав свойство distance и добавив расширение в классы xwing и DeathStar мы добавили прицельную дальность
    var distance: Int { get }
    var ammunition: Int { get set }
    mutating func fire() throws
}

extension Weapons {
    mutating func fire() throws {
        guard ammunition > 0 else {
            print("\(name) Нет патронов!")
            throw WeaponsError.isEmpty
        }
        ammunition -= 1
        print("\nПульнул! А чем? \(name)")
    }
}

// Создали протокол Сила джедая
protocol JEDIForce {
    var name: String { get }
    var damage: Int { get }
    var distance: Int { get }
    var ammunition: Int { get set }
    mutating func useTheForce() throws
}

enum ForceError: Error {
    case isEmpty
}

//Делаем расширение и используем обработку ошибок
extension JEDIForce {
    mutating func useTheForce() throws {
       guard ammunition > 0 else {
        print("\(name) Исчерпал свою силу!")
            throw ForceError.isEmpty
        }
        ammunition -= 100
        print("\nИспользуй силу Люк!")
    }
}
