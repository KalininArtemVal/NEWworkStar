//
//  StartshipsJedi.swift
//  StarWars
//
//  Created by Aleksey Rochev (Netology) on 19.11.2019.
//  Copyright © 2019 Aleksey Rochev (Netology). All rights reserved.
//

import Foundation

class XWing: StarshipImp {
        
    // MARK: - Constants
    
    private enum Constants {
        static let health = 100
    }
        
    // MARK: - Lifecycle
    
    init(coordinate: Point) {
        super.init(name: "X Wing",
                   fraction: .jedi,
                   coordinate: coordinate,
                   weapons: [LazerBlaster(distance: 10)],
                   force: [JEDIForce].init())
        health = Constants.health
    }
    
    deinit {
        print("\(name) ты должен был бороться со злом ...")
    }
}

extension XWing: RadarObserver {
    func detected(object: SpaceObject) {
        do {
            try fire(to: object.coordinate)
        } catch WeaponsError.isEmpty {
            print("Нет патронов!")
        } catch {
            print("Ошибка не известна")
        }
    }
}


//Добавляем класс Люка Скайуокера
class LukeSkywalker: StarshipImp {
    
    private enum Constants {
        static let health = 100
    }
    
    init(coordinate: Point) {
        super.init(name: "Luke Skywalker",
                   fraction: .jedi,
                   coordinate: coordinate,
                   weapons: [NewForce(distance: 10)],
                   force: [Force].init())
        health = Constants.health
    }
    
    deinit {
        print("\(name) красный пять подбит ...")
    }
}

extension LukeSkywalker: RadarObserver {
    func detected(object: SpaceObject) {
        do {
            try fire(to: object.coordinate)
        } catch WeaponsError.isEmpty {
            print("Нет патронов!")
        } catch {
            print("Ошибка не известна")
        }
    }
}
//Делаем функцию для ответа на предложение перейти на тёмную сторону
extension LukeSkywalker {
    func sayNever(){
           print("Никогда!\n")
    }
}

class AdmiralAkbar: StarshipImp {
    private enum Constants {
        static let health = 100
    }
    init(coordinate: Point) {
        super.init(name: "Admiral Akbar",
                   fraction: .rebels,
                   coordinate: coordinate,
                   weapons: [SuperLazer(distance: 10)],
                   force: [JEDIForce].init())
        health = Constants.health
    }
    deinit {
        print("\nЭто ловушка!")
    }
}

extension AdmiralAkbar: RadarObserver {
    func detected(object: SpaceObject) {
        do {
            try useTheForce(to: object.coordinate)
        } catch ForceError.isEmpty {
            print("Нет патронов!")
        } catch {
            print("Ошибка не известна")
        }
    }
}
